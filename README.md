### Readme.md 
#### Submitted as part of Getting and cleaning data course work

#####Navigation of the useful files in the repo

1. [run_analysis.R](https://github.com/harpreetsethi/gettincleaningdatacp/blob/master/run_analysis.R) - main R script with the course submission code. If a code statement directly satisfies one or more of the course submission requirements you will find the text ***Req #X*** (where **X** is the course submission requirement number) before the statement. 

2. [TidyDataSet1.txt](https://github.com/harpreetsethi/gettincleaningdatacp/blob/master/TidyDataSet1.txt)/[TidyDataSet2.txt](https://github.com/harpreetsethi/gettincleaningdatacp/blob/master/TidyDataSet2.txt) - Extract of the first and second tidy data set

#####Script build and test environment

- OS - OS X Yosemite (10.10.3)
- Macbook Air (1.7 GHz Intel Core i7, 8 GB 1600 MHz DDR3, Intel HD Graphics 5000 1536 MB)
- Script developed on RStudio (Version 0.98.1091)

####How to run the R Script

After you have downloaded the file it can be run from any directory using the command source

`source('<PATH relative to the directory from where R session was invoked>/run_analysis.R')`

For example
`source('~/datasciencecoursera/gettingdata/CourseProject/run_analysis.R')`

Assuming your R invoking directory (*working directory*) has a directory structure datasciencecoursera/gettingdata/CourseProject/ and run_analysis.R was placed under that structure.

####Structure of the R Script
#####Getting the files
Script checks if there is a directory called UCI HAR Dataset in the directory from where the R session was invoked. If not it downloads the file (as SamsungData.zip) and unzips it. Please remember that this action takes place in the directory from where the R session was invoked (working directory). There has been no attempt made to change the current working directory. Later on when tidy data sets are stored in a physical file, their absolute paths are printed for convenience.

#####Loading library
Main data transformation package used by the R script is dplyr. The script checks if the package is installed, if yes then it loads it otherwise it tries to install and load the package. In case the install/load fails,the script stops with the message "Package dplyr not found". You will need to consult online forums to figure out the reason behind installation/load failure.

#####Reading in master data
Script next reads in the 561 feature set and activity label data from the two master files features.txt & activity_labels.txt respectively.

There is a master variable declaration `var_findColStr<-c("mean", "std")` which stores the text strings for mean and standard deviation and will be used later to find and extract columns that contain those phrases.

#####Loading in test and training data
Test and training data is loaded in a similar fashion

- Load in the subject data 

- Load in the observation data
	- Change the column names to the feature names to make them more descriptive (requirement 4 of course submission)
	- Extract out the columns containing the word "mean" or "std" (requirement 2 of course submission). grep command has been invoked with `ignore.case=TRUE` which means even the last few features such as *angle(tBodyAccMean,gravity)* will be selected.

- Load in the activity data set
	- Replace the activity numbers with activity name from the activity master data variable. `mutate` command has been used to find the matching text from the master variable
`var_activityLabel[var_YTest$V1, 2]`
and then replace the number with the activity name. This covers requirement 3 of the course submission.

- As a final step the 3 data sets mentioned above have been merged together using the cbind command. The data is joined column wise because for each subject and activity combination we can obtain the 561 observations vector (for each of the features).

Similar steps have been taken to load and transform the training data.

#####Merging the two data sets to form first data set (requirement 1 of course submission)

rbind command is used to bind the training and test data sets. Data is joined row wise to create a data set corresponding to feature observations pertinent to a *subject and activity* combination. 
There will be one row from training and one from test for a *subject/activity* combination. 
This constitutes a tidy data set as each row corresponds to only one set of observations (although there are two rows per combination but they belong to two fundamentally observation sets).

The other option was to merge the data column wise but that would have created **multiple columns** capturing the same kind of observation, for e.g. there would have been two columns named tBodyAcc-mean()-Y. Albeit they will have two different kinds of observations (training and test) but I believe that data could be aggregated and studied in an easier way if the data sets were combined row wise. 

There is no **explicit** requirement to **demarcate** or uniquely identify training and test data and hence no measures have been made to do so either. Refer to the thread [here](https://class.coursera.org/getdata-014/forum/thread?thread_id=218 "here") (you may have to log in to view the discussion) for more details. And there is no **explicit** requirement to de-duplicate the data set set either, hence no such measures are taken.

For the ease of the user running the script the first dataset is stored in the working directory (although this was not a specific requirement). A message is printed on the prompt stating the location where the file was created.

#####Creating the second tidy data set

Second tidy data set is created by summarizing (`summarise_each` command is used) the observations for the chosen features for a combination of *subject and activity*. Result is then stored in a text file named "TidyDataSet2.txt" which will be created in the same directory where R session was invoked from (it is also part of this repository). 

write.table has been invoked with `row.names=FALSE` as requested in the course submission process. `quote=FALSE` option is used so that column names do not have quotes around them, making it easier for the user to reload the file. A message is printed on the prompt stating the location where the file was created. A small snippet of the tidy data set is also printed on the prompt, as the tidy data set variable was created using the `tbl_df` function, only a succinct summary is printed. 

#####Final Cleanup

File SamsungData.zip is removed while the directory "UCI HAR Dataset" is left untouched in case the user wants to review or load the raw data.

#####Code Book/Data Dictionary
Is available in the repo titled [CodeBook.pdf](https://github.com/harpreetsethi/gettincleaningdatacp/blob/master/CodeBook.pdf). Code Book contains the list of columns with expanded description and some sample values. As both tidy data sets have the same structure, the column definitions are presented only once.

#####References
Hood, D. (2015). David's personal course project FAQ. [Blog] Forum for Getting and Cleaning Data. Available at: https://class.coursera.org/getdata-014/forum/thread?thread_id=30 [Accessed 23 May 2015].

Wickham, H. (2015). Tidy Data. [online] had.co.nz. Available at: http://vita.had.co.nz/papers/tidy-data.pdf [Accessed 23 May 2015].