#Check if the Samsung directory exists, if not download and unzip the files
cwd<-getwd()
if(!(file.exists(paste(cwd,"/UCI HAR Dataset", sep = "")))){
  download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", destfile=paste(cwd,"/SamsungData.zip", sep = ""), quiet = TRUE, method="curl")
  unzip(paste(cwd,"/SamsungData.zip", sep = ""))
  print("Creating New Directory")
}

#Load Library
#library (data.table)
var_package<-"dplyr"
if (!require(var_package,quietly = TRUE, character.only = TRUE))
{
  install.packages(var_package, quiet=TRUE, dep=TRUE)
  if(!require(var_package,character.only = TRUE)) stop("Package dplyr not found")
}

#Load Features and Activity label dataset
var_features<-tbl_df(read.table(paste(cwd,"/UCI HAR Dataset/features.txt", sep = "")))
var_activityLabel<-read.table(paste(cwd,"/UCI HAR Dataset/activity_labels.txt", sep = ""))

#Create Match String
var_findColStr<-c("mean", "std")

####Load Test Data
var_subjectTest<-read.table(paste(cwd,"/UCI HAR Dataset/test/subject_test.txt", sep = ""))

var_XTest<-tbl_df(read.table(paste(cwd,"/UCI HAR Dataset/test/X_test.txt", sep = "")))
#Rename Columns and extract the ones corresponding to mean and standard deviation
colnames(var_XTest)<-var_features$V2
var_XTestNew<-tbl_df(var_XTest[,grep(paste(var_findColStr,collapse="|"), var_features$V2,ignore.case=TRUE)])

var_YTest<-tbl_df(read.table(paste(cwd,"/UCI HAR Dataset/test/y_test.txt", sep = "")))
#Add descriptive activity names
var_YTest<-tbl_df(mutate(var_YTest, V1=var_activityLabel[var_YTest$V1, 2]))

#Create the complete test data set
var_TestDataSet<-tbl_df(cbind(var_subjectTest, var_YTest, var_XTestNew))

#####Load Train Data
var_subjectTrain<-read.table(paste(cwd,"/UCI HAR Dataset/train/subject_train.txt", sep = ""))

var_XTrain<-tbl_df(read.table(paste(cwd,"/UCI HAR Dataset/train/X_train.txt", sep = "")))
#Rename Columns and extract the ones corresponding to mean and standard deviation
colnames(var_XTrain)<-var_features$V2
var_XTrainNew<-tbl_df(var_XTrain[,grep(paste(var_findColStr,collapse="|"), var_features$V2,ignore.case=TRUE)])

var_YTrain<-tbl_df(read.table(paste(cwd,"/UCI HAR Dataset/train/y_train.txt", sep = "")))
#Add descriptive activity names
var_YTrain<-tbl_df(mutate(var_YTrain, V1=var_activityLabel[var_YTrain$V1, 2]))

#Create the complete training data set
var_TrainDataSet<-tbl_df(cbind(var_subjectTrain, var_YTrain, var_XTrainNew))

#Merge the test and training dataset
var_TidyDataSet1<-tbl_df(rbind(var_TestDataSet, var_TrainDataSet))
colnames(var_TidyDataSet1)[1:2]<-c("Subject", "Activity")
var_TidyDataSet2<-tbl_df(var_TidyDataSet1%>%group_by(Subject, Activity)%>%summarise_each(funs(mean)))

write.table(var_TidyDataSet2, paste(cwd,"/TidyDataSet2.txt", sep = ""), quote=FALSE, row.name=FALSE)

#clean up files
file.remove(paste(cwd,"/SamsungData.zip", sep = ""))