#Check if the Samsung directory exists, if not download and unzip the files
cwd<-getwd()
if(!(file.exists(paste(cwd,"/UCI HAR Dataset", sep = "")))){
  download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", destfile=paste(cwd,"/SamsungData.zip", sep = ""), quiet = TRUE, method="curl")
  unzip(paste(cwd,"/SamsungData.zip", sep = ""))
}

if(!(file.exists(paste(cwd,"/UCI HAR Dataset", sep = ""))))
  stop("Cannot find data")

#################Load Library
var_package<-"dplyr"
if (!require(var_package,quietly = TRUE, character.only = TRUE))
{
  install.packages(var_package, quiet=TRUE, dep=TRUE)
  if(!require(var_package,character.only = TRUE)) stop("Package dplyr not found")
}

#################Load Features and Activity label dataset
var_features<-tbl_df(read.table(paste(cwd,"/UCI HAR Dataset/features.txt", sep = "")))
var_activityLabel<-read.table(paste(cwd,"/UCI HAR Dataset/activity_labels.txt", sep = ""))

#Create Match String to find the columns that have the phrase mean and std (for standard deviation in them)
var_findColStr<-c("mean", "std")

#################Load Test Data
var_subjectTest<-read.table(paste(cwd,"/UCI HAR Dataset/test/subject_test.txt", sep = ""))

var_XTest<-tbl_df(read.table(paste(cwd,"/UCI HAR Dataset/test/X_test.txt", sep = "")))
#Rename Columns and extract the ones corresponding to mean and standard deviation (Req #2 & #4)
colnames(var_XTest)<-var_features$V2
var_XTestNew<-tbl_df(var_XTest[,grep(paste(var_findColStr,collapse="|"), var_features$V2,ignore.case=TRUE)])

var_YTest<-tbl_df(read.table(paste(cwd,"/UCI HAR Dataset/test/y_test.txt", sep = "")))
#Add descriptive activity names (Req#3)
var_YTest<-tbl_df(mutate(var_YTest, V1=var_activityLabel[var_YTest$V1, 2]))

#Create the complete test data set
var_TestDataSet<-tbl_df(cbind(var_subjectTest, var_YTest, var_XTestNew))

#################Load Train Data
var_subjectTrain<-read.table(paste(cwd,"/UCI HAR Dataset/train/subject_train.txt", sep = ""))

var_XTrain<-tbl_df(read.table(paste(cwd,"/UCI HAR Dataset/train/X_train.txt", sep = "")))
#Rename Columns and extract the ones corresponding to mean and standard deviation (Req #2 & #4)
colnames(var_XTrain)<-var_features$V2
var_XTrainNew<-tbl_df(var_XTrain[,grep(paste(var_findColStr,collapse="|"), var_features$V2,ignore.case=TRUE)])

var_YTrain<-tbl_df(read.table(paste(cwd,"/UCI HAR Dataset/train/y_train.txt", sep = "")))
#Add descriptive activity names (Req#3)
var_YTrain<-tbl_df(mutate(var_YTrain, V1=var_activityLabel[var_YTrain$V1, 2]))

#Create the complete training data set
var_TrainDataSet<-tbl_df(cbind(var_subjectTrain, var_YTrain, var_XTrainNew))

#################Merge the test and training dataset and rename subject and activity columns
#Req #1 and #4
var_TidyDataSet1<-tbl_df(rbind(var_TestDataSet, var_TrainDataSet))
colnames(var_TidyDataSet1)[1:2]<-c("Subject", "Activity")

#Create the file for the first tidy data set
write.table(var_TidyDataSet1, paste(cwd,"/TidyDataSet1.txt", sep = ""), quote=FALSE, row.name=FALSE)
#Print message with the location of the second tidy data set
cat (paste("Tidy Dataset-1 file created at - ",cwd,"/TidyDataSet1.txt\n", sep = ""))

#Req 5 - Calculate the mean per subject and activity combination
var_TidyDataSet2<-tbl_df(var_TidyDataSet1%>%group_by(Subject, Activity)%>%summarise_each(funs(mean)))

#Create the file for the second tidy data set
write.table(var_TidyDataSet2, paste(cwd,"/TidyDataSet2.txt", sep = ""), quote=FALSE, row.name=FALSE)
#Print message with the location of the second tidy data set
cat (paste("Tidy Dataset-2 file created at - ",cwd,"/TidyDataSet2.txt", sep = ""))

#clean up files
if(file.exists(paste(cwd,"/SamsungData.zip", sep = "")))
  file.remove(paste(cwd,"/SamsungData.zip", sep = ""))