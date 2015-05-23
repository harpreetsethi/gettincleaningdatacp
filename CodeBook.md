###Data Dictionary

Tidy Data Set 1 [stored in variable var_TidyDataSet1] and Tidy Data Set 2 [stored in variable var_TidyDataSet2]. The only difference between the two data set is that the second tidy dataset is a condensed form of the first. The second tidy data set is computed by taking a mean of all the observations (#3 onwards below) across a combination of subject (#1 below) and activity (#2 below). Code book below describes both the data sets. There are 88 variables in total, first two referring to the master combination of subject and activity. All other variables form the observational data set storing the feature observations.

###Transformations
####Subject

- Data Set 1 - None
- Data Set 2 - Used for aggregation purpose to compute mean of feature observation set

####Activity

- Data Set 1 - Changed the numeric data from the raw data set to text based and more descriptive data
- Data Set 2 - Changed the numeric data from the raw data set to text based and more descriptive data, used for aggregation purpose to compute mean of feature observation set

####Observation Feature Set

- Data Set 1 - Column Names have been changed from the raw data set to more descriptive names
- Data Set 2 - Column Names have been changed from the raw data set to more descriptive names, mean of the observation data was computed for every subject and activity combination

####Data Dictionary
- **Column Name** - Subject	**Description** - Integer value denoting one of the subjects	**Data Type** - int	**Typical Actual Data Elements** - 1,2,3…
- **Column Name** - Activity	**Description** - Text value denoting one of the activities	**Data Type** - factor w/ 6 levels	**Typical Actual Data Elements** - LAYING, SITTING...
- **Column Name** - tBodyAcc-mean()-X	**Description** - Mean of body acceleration X Axis	**Data Type** - num	**Typical Actual Data Elements** - [-1,1]
- **Column Name** - tBodyAcc-mean()-Y	**Description** - Mean of body acceleration Y Axis	**Data Type** - num	**Typical Actual Data Elements** - [-1,1]
- **Column Name** - tBodyAcc-mean()-Z	**Description** - Mean of body acceleration Z Axis	**Data Type** - num	**Typical Actual Data Elements** - [-1,1]
- **Column Name** - tBodyAcc-std()-X	**Description** - Standard Deviation of body acceleration X Axis	**Data Type** - num	**Typical Actual Data Elements** - [-1,1]
- **Column Name** - tBodyAcc-std()-Y	**Description** - Standard Deviation of body acceleration Y Axis	**Data Type** - num	**Typical Actual Data Elements** - [-1,1]
- **Column Name** - tBodyAcc-std()-Z 	**Description** - Standard Deviation of body acceleration Z Axis	**Data Type** - num	**Typical Actual Data Elements** - [-1,1]
- **Column Name** - tGravityAcc-mean()-X 	**Description** - Mean of gravitational acceleration X Axis	**Data Type** - num	**Typical Actual Data Elements** - [-1,1]
- **Column Name** - tGravityAcc-mean()-Y 	**Description** - Mean of gravitational acceleration Y Axis	**Data Type** - num	**Typical Actual Data Elements** - [-1,1]
- **Column Name** - tGravityAcc-mean()-Z 	**Description** - Mean of gravitational acceleration Z Axis	**Data Type** - num	**Typical Actual Data Elements** - [-1,1]
- **Column Name** - tGravityAcc-std()-X 	**Description** - Standard Deviation of gravitational acceleration X Axis	**Data Type** - num	**Typical Actual Data Elements** - [-1,1]
- **Column Name** - tGravityAcc-std()-Y 	**Description** - Standard Deviation of gravitational acceleration Y Axis	**Data Type** - num	**Typical Actual Data Elements** - [-1,1]
- **Column Name** - tGravityAcc-std()-Z 	**Description** - Standard Deviation of gravitational acceleration Z Axis	**Data Type** - num	**Typical Actual Data Elements** - [-1,1]
- **Column Name** - tBodyAccJerk-mean()-X 	**Description** - Mean of body linear acceleration Jerk Signal X Axis	**Data Type** - num	**Typical Actual Data Elements** - [-1,1]
- **Column Name** - tBodyAccJerk-mean()-Y 	**Description** - Mean of body linear acceleration Jerk Signal Y Axis	**Data Type** - num	**Typical Actual Data Elements** - [-1,1]
- **Column Name** - tBodyAccJerk-mean()-Z 	**Description** - Mean of body linear acceleration Jerk Signal Z Axis	**Data Type** - num	**Typical Actual Data Elements** - [-1,1]
- **Column Name** - tBodyAccJerk-std()-X 	**Description** - Standard Deviation of body linear acceleration Jerk Signal X Axis	**Data Type** - num	**Typical Actual Data Elements** - [-1,1]
- **Column Name** - tBodyAccJerk-std()-Y 	**Description** - Standard Deviation of body linear acceleration Jerk Signal Y Axis	**Data Type** - num	**Typical Actual Data Elements** - [-1,1]
- **Column Name** - tBodyAccJerk-std()-Z 	**Description** - Standard Deviation of body linear acceleration Jerk Signal Z Axis	**Data Type** - num	**Typical Actual Data Elements** - [-1,1]
- **Column Name** - tBodyGyro-mean()-X 	**Description** - Mean of body gyroscope signal X Axis	**Data Type** - num	**Typical Actual Data Elements** - [-1,1]
- **Column Name** - tBodyGyro-mean()-Y 	**Description** - Mean of body gyroscope signal Y Axis	**Data Type** - num	**Typical Actual Data Elements** - [-1,1]
- **Column Name** - tBodyGyro-mean()-Z 	**Description** - Mean of body gyroscope signal Z Axis	**Data Type** - num	**Typical Actual Data Elements** - [-1,1]
- **Column Name** - tBodyGyro-std()-X 	**Description** - Standard Deviation of body gyroscope signal X Axis	**Data Type** - num	**Typical Actual Data Elements** - [-1,1]
- **Column Name** - tBodyGyro-std()-Y 	**Description** - Standard Deviation of body gyroscope signal Y Axis	**Data Type** - num	**Typical Actual Data Elements** - [-1,1]
- **Column Name** - tBodyGyro-std()-Z 	**Description** - Standard Deviation of body gyroscope signal Z Axis	**Data Type** - num	**Typical Actual Data Elements** - [-1,1]
- **Column Name** - tBodyGyroJerk-mean()-X 	**Description** - Mean of gyroscopic Jerk Signal X Axis	**Data Type** - num	**Typical Actual Data Elements** - [-1,1]
- **Column Name** - tBodyGyroJerk-mean()-Y 	**Description** - Mean of gyroscopic Jerk Signal Y Axis	**Data Type** - num	**Typical Actual Data Elements** - [-1,1]
- **Column Name** - tBodyGyroJerk-mean()-Z 	**Description** - Mean of gyroscopic Jerk Signal Z Axis	**Data Type** - num	**Typical Actual Data Elements** - [-1,1]
- **Column Name** - tBodyGyroJerk-std()-X 	**Description** - Standard Deviation of gyroscopic Jerk Signal X Axis	**Data Type** - num	**Typical Actual Data Elements** - [-1,1]
- **Column Name** - tBodyGyroJerk-std()-Y 	**Description** - Standard Deviation of gyroscopic Jerk Signal Y Axis	**Data Type** - num	**Typical Actual Data Elements** - [-1,1]
- **Column Name** - tBodyGyroJerk-std()-Z 	**Description** - Standard Deviation of gyroscopic Jerk Signal Z Axis	**Data Type** - num	**Typical Actual Data Elements** - [-1,1]
- **Column Name** - tBodyAccMag-mean() 	**Description** - Mean of Euclidean norm of body acceleration	**Data Type** - num	**Typical Actual Data Elements** - [-1,1]
- **Column Name** - tBodyAccMag-std() 	**Description** - Standard Deviation of Euclidean norm of body acceleration	**Data Type** - num	**Typical Actual Data Elements** - [-1,1]
- **Column Name** - tGravityAccMag-mean() 	**Description** - Mean of Euclidean norm of gravitational acceleration	**Data Type** - num	**Typical Actual Data Elements** - [-1,1]
- **Column Name** - tGravityAccMag-std() 	**Description** - Standard Deviation of Euclidean norm of gravitational acceleration	**Data Type** - num	**Typical Actual Data Elements** - [-1,1]
- **Column Name** - tBodyAccJerkMag-mean() 	**Description** - Mean of Euclidean norm of body linear acceleration Jerk Signal	**Data Type** - num	**Typical Actual Data Elements** - [-1,1]
- **Column Name** - tBodyAccJerkMag-std() 	**Description** - Standard Deviation of Euclidean norm of body linear acceleration Jerk Signal	**Data Type** - num	**Typical Actual Data Elements** - [-1,1]
- **Column Name** - tBodyGyroMag-mean() 	**Description** - Mean of Euclidean norm of body gyroscope signal	**Data Type** - num	**Typical Actual Data Elements** - [-1,1]
- **Column Name** - tBodyGyroMag-std() 	**Description** - Standard Deviation of Euclidean norm of body gyroscope signal	**Data Type** - num	**Typical Actual Data Elements** - [-1,1]
- **Column Name** - tBodyGyroJerkMag-mean() 	**Description** - Mean of Euclidean norm of gyroscopic Jerk Signal	**Data Type** - num	**Typical Actual Data Elements** - [-1,1]
- **Column Name** - tBodyGyroJerkMag-std() 	**Description** - Standard Deviation of Euclidean norm of gyroscopic Jerk Signal	**Data Type** - num	**Typical Actual Data Elements** - [-1,1]
- **Column Name** - fBodyAcc-mean()-X 	**Description** - Fast Fourier Transform of Mean of body acceleration X Axis	**Data Type** - num	**Typical Actual Data Elements** - [-1,1]
- **Column Name** - fBodyAcc-mean()-Y 	**Description** - Fast Fourier Transform of Mean of body acceleration Y Axis	**Data Type** - num	**Typical Actual Data Elements** - [-1,1]
- **Column Name** - fBodyAcc-mean()-Z 	**Description** - Fast Fourier Transform of Mean of body acceleration Z Axis	**Data Type** - num	**Typical Actual Data Elements** - [-1,1]
- **Column Name** - fBodyAcc-std()-X 	**Description** - Fast Fourier Transform of Standard Deviation of body acceleration X Axis	**Data Type** - num	**Typical Actual Data Elements** - [-1,1]
- **Column Name** - fBodyAcc-std()-Y 	**Description** - Fast Fourier Transform of Standard Deviation of body acceleration Y Axis	**Data Type** - num	**Typical Actual Data Elements** - [-1,1]
- **Column Name** - fBodyAcc-std()-Z 	**Description** - Fast Fourier Transform of Standard Deviation of body acceleration Z Axis	**Data Type** - num	**Typical Actual Data Elements** - [-1,1]
- **Column Name** - fBodyAcc-meanFreq()-X 	**Description** - Fast Fourier Transform of Mean Frequency of body acceleration X Axis	**Data Type** - num	**Typical Actual Data Elements** - [-1,1]
- **Column Name** - fBodyAcc-meanFreq()-Y 	**Description** - Fast Fourier Transform of Mean Frequency of body acceleration Y Axis	**Data Type** - num	**Typical Actual Data Elements** - [-1,1]
- **Column Name** - fBodyAcc-meanFreq()-Z 	**Description** - Fast Fourier Transform of Mean Frequency of body acceleration Z Axis	**Data Type** - num	**Typical Actual Data Elements** - [-1,1]
- **Column Name** - fBodyAccJerk-mean()-X 	**Description** - Fast Fourier Transform of Mean of body linear acceleration Jerk Signal X Axis	**Data Type** - num	**Typical Actual Data Elements** - [-1,1]
- **Column Name** - fBodyAccJerk-mean()-Y 	**Description** - Fast Fourier Transform of Mean of body linear acceleration Jerk Signal Y Axis	**Data Type** - num	**Typical Actual Data Elements** - [-1,1]
- **Column Name** - fBodyAccJerk-mean()-Z 	**Description** - Fast Fourier Transform of Mean of body linear acceleration Jerk Signal Z Axis	**Data Type** - num	**Typical Actual Data Elements** - [-1,1]
- **Column Name** - fBodyAccJerk-std()-X 	**Description** - Fast Fourier Transform of Standard Deviation of body linear acceleration Jerk Signal X Axis	**Data Type** - num	**Typical Actual Data Elements** - [-1,1]
- **Column Name** - fBodyAccJerk-std()-Y 	**Description** - Fast Fourier Transform of Standard Deviation of body linear acceleration Jerk Signal Y Axis	**Data Type** - num	**Typical Actual Data Elements** - [-1,1]
- **Column Name** - fBodyAccJerk-std()-Z 	**Description** - Fast Fourier Transform of Standard Deviation of body linear acceleration Jerk Signal Z Axis	**Data Type** - num	**Typical Actual Data Elements** - [-1,1]
- **Column Name** - fBodyAccJerk-meanFreq()-X 	**Description** - Fast Fourier Transform of Mean Frequency of body linear acceleration Jerk Signal X Axis	**Data Type** - num	**Typical Actual Data Elements** - [-1,1]
- **Column Name** - fBodyAccJerk-meanFreq()-Y 	**Description** - Fast Fourier Transform of Mean Frequency of body linear acceleration Jerk Signal Y Axis	**Data Type** - num	**Typical Actual Data Elements** - [-1,1]
- **Column Name** - fBodyAccJerk-meanFreq()-Z 	**Description** - Fast Fourier Transform of Mean Frequency of body linear acceleration Jerk Signal Z Axis	**Data Type** - num	**Typical Actual Data Elements** - [-1,1]
- **Column Name** - fBodyGyro-mean()-X 	**Description** - Fast Fourier Transform of Mean of body gyroscope signal X Axis	**Data Type** - num	**Typical Actual Data Elements** - [-1,1]
- **Column Name** - fBodyGyro-mean()-Y 	**Description** - Fast Fourier Transform of Mean of body gyroscope signal Y Axis	**Data Type** - num	**Typical Actual Data Elements** - [-1,1]
- **Column Name** - fBodyGyro-mean()-Z 	**Description** - Fast Fourier Transform of Mean of body gyroscope signal Z Axis	**Data Type** - num	**Typical Actual Data Elements** - [-1,1]
- **Column Name** - fBodyGyro-std()-X 	**Description** - Fast Fourier Transform of Standard Deviation of body gyroscope signal X Axis	**Data Type** - num	**Typical Actual Data Elements** - [-1,1]
- **Column Name** - fBodyGyro-std()-Y 	**Description** - Fast Fourier Transform of Standard Deviation of body gyroscope signal Y Axis	**Data Type** - num	**Typical Actual Data Elements** - [-1,1]
- **Column Name** - fBodyGyro-std()-Z 	**Description** - Fast Fourier Transform of Standard Deviation of body gyroscope signal Z Axis	**Data Type** - num	**Typical Actual Data Elements** - [-1,1]
- **Column Name** - fBodyGyro-meanFreq()-X 	**Description** - Fast Fourier Transform of Mean Frequency of body gyroscope signal X Axis	**Data Type** - num	**Typical Actual Data Elements** - [-1,1]
- **Column Name** - fBodyGyro-meanFreq()-Y 	**Description** - Fast Fourier Transform of Mean Frequency of body gyroscope signal Y Axis	**Data Type** - num	**Typical Actual Data Elements** - [-1,1]
- **Column Name** - fBodyGyro-meanFreq()-Z 	**Description** - Fast Fourier Transform of Mean Frequency of body gyroscope signal Z Axis	**Data Type** - num	**Typical Actual Data Elements** - [-1,1]
- **Column Name** - fBodyAccMag-mean() 	**Description** - Fast Fourier Transform of Mean of Euclidean norm of body acceleration	**Data Type** - num	**Typical Actual Data Elements** - [-1,1]
- **Column Name** - fBodyAccMag-std() 	**Description** - Fast Fourier Transform of Standard Deviation of Euclidean norm of body acceleration	**Data Type** - num	**Typical Actual Data Elements** - [-1,1]
- **Column Name** - fBodyAccMag-meanFreq() 	**Description** - Fast Fourier Transform of Mean Frequency of Euclidean norm of body acceleration	**Data Type** - num	**Typical Actual Data Elements** - [-1,1]
- **Column Name** - fBodyBodyAccJerkMag-mean() 	**Description** - Fast Fourier Transform of Mean of Euclidean norm of body linear acceleration Jerk Signal	**Data Type** - num	**Typical Actual Data Elements** - [-1,1]
- **Column Name** - fBodyBodyAccJerkMag-std() 	**Description** - Fast Fourier Transform of Standard Deviation of Euclidean norm of body linear acceleration Jerk Signal	**Data Type** - num	**Typical Actual Data Elements** - [-1,1]
- **Column Name** - fBodyBodyAccJerkMag-meanFreq() 	**Description** - Fast Fourier Transform of Mean Frequency of Euclidean norm of body linear acceleration Jerk Signal	**Data Type** - num	**Typical Actual Data Elements** - [-1,1]
- **Column Name** - fBodyBodyGyroMag-mean() 	**Description** - Fast Fourier Transform of Mean of Euclidean norm of body gyroscope signal	**Data Type** - num	**Typical Actual Data Elements** - [-1,1]
- **Column Name** - fBodyBodyGyroMag-std() 	**Description** - Fast Fourier Transform of Standard Deviation of Euclidean norm of body gyroscope signal	**Data Type** - num	**Typical Actual Data Elements** - [-1,1]
- **Column Name** - fBodyBodyGyroMag-meanFreq() 	**Description** - Fast Fourier Transform of Mean Frequency of Euclidean norm of body gyroscope signal	**Data Type** - num	**Typical Actual Data Elements** - [-1,1]
- **Column Name** - fBodyBodyGyroJerkMag-mean() 	**Description** - Fast Fourier Transform of Mean of Euclidean norm of gyroscopic Jerk Signal	**Data Type** - num	**Typical Actual Data Elements** - [-1,1]
- **Column Name** - fBodyBodyGyroJerkMag-std() 	**Description** - Fast Fourier Transform of Standard Deviation of Euclidean norm of gyroscopic Jerk Signal	**Data Type** - num	**Typical Actual Data Elements** - [-1,1]
- **Column Name** - fBodyBodyGyroJerkMag-meanFreq() 	**Description** - Fast Fourier Transform of Mean Frequency of Euclidean norm of gyroscopic Jerk Signal	**Data Type** - num	**Typical Actual Data Elements** - [-1,1]
- **Column Name** - angle(tBodyAccMean,gravity) 	**Description** - Angle between average signal pertinent to BodyAccMean and gravity	**Data Type** - num	**Typical Actual Data Elements** - [-1,1]
- **Column Name** - angle(tBodyAccJerkMean),gravityMean) 	**Description** - Angle between average signal pertinent to BodyAccJerk and gravitymean	**Data Type** - num	**Typical Actual Data Elements** - [-1,1]
- **Column Name** - angle(tBodyGyroMean,gravityMean) 	**Description** - Angle between average signal pertinent to BodyGyro and gravity	**Data Type** - num	**Typical Actual Data Elements** - [-1,1]
- **Column Name** - angle(tBodyGyroJerkMean,gravityMean) 	**Description** - Angle between average signal pertinent to BodyGyroJerk and gravity	**Data Type** - num	**Typical Actual Data Elements** - [-1,1]
- **Column Name** - angle(X,gravityMean) 	**Description** - Angle between X axis and average of gravity signal	**Data Type** - num	**Typical Actual Data Elements** - [-1,1]
- **Column Name** - angle(Y,gravityMean) 	**Description** - Angle between Y axis and average of gravity signal	**Data Type** - num	**Typical Actual Data Elements** - [-1,1]
- **Column Name** - angle(Z,gravityMean)	**Description** - Angle between Z axis and average of gravity signal	**Data Type** - num	**Typical Actual Data Elements** - [-1,1]