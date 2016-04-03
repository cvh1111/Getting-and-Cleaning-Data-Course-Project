#Codebook

This codebook summarizes the resulting data fields in  tidy.txt and describes how the files was created.

# Sources of the data 
Here are the data for the project:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

A description of the data can be found here : http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

# Summary of the steps taken

1. The training and the test sets are merged to one set
2. I used only the measurements on the mean and standard deviation for each measurement.
3. Descriptive activity names to name the activities in the data set
4. The labels of the sets are made descriptive
5. From the data set in step 4, a second, independent tidy data set with the average of each variable for each activity and each subject.

# In the Tidy.txt file the following fields are available

Identifiers

* subject  - The ID of the subject
* activity  - The type of activity performed for measurements
	* the following actitities are in the file:
		* WALKING (1)
		* WALKING_UPSTAIRS  (2)
		* WALKING_DOWNSTAIRS  (3)
		* SITTING  (4)
		* STANDING  (5)
		* LAYING  (6)
* Measurements
	* tBodyAccMeanY 
	* tBodyAccMeanX 
	* tBodyAccMeanZ 
	* tBodyAccStdX 
	* tBodyAccStdY 
	* tBodyAccStdZ 
	* tGravityAccMeanX 
	* tGravityAccMeanY 
	* tGravityAccMeanZ 
	* tGravityAccStdX 
	* tGravityAccStdY 
	* tGravityAccStdZ 
	* tBodyAccJerkMeanX 
	* tBodyAccJerkMeanY 
	* tBodyAccJerkMeanZ 
	* tBodyAccJerkStdX 
	* tBodyAccJerkStdY 
	* tBodyAccJerkStdZ 
	* tBodyGyroMeanX 
	* tBodyGyroMeanY 
	* tBodyGyroMeanZ 
	* tBodyGyroStdX 
	* tBodyGyroStdY 
	* tBodyGyroStdZ 
	* tBodyGyroJerkMeanX 
	* tBodyGyroJerkMeanY 
	* tBodyGyroJerkMeanZ 
	* tBodyGyroJerkStdX 
	* tBodyGyroJerkStdY 
	* tBodyGyroJerkStdZ 
	* tBodyAccMagMean 
	* tBodyAccMagStd 
	* tGravityAccMagMean 
	* tGravityAccMagStd 
	* tBodyAccJerkMagMean 
	* tBodyAccJerkMagStd 
	* tBodyGyroMagMean 
	* tBodyGyroMagStd 
	* tBodyGyroJerkMagMean 
	* tBodyGyroJerkMagStd 
	* fBodyAccMeanX 
	* fBodyAccMeanY 
	* fBodyAccMeanZ 
	* fBodyAccStdX 
	* fBodyAccStdY 
	* fBodyAccStdZ 
	* fBodyAccMeanFreqX 
	* fBodyAccMeanFreqY 
	* fBodyAccMeanFreqZ 
	* fBodyAccJerkMeanX 
	* fBodyAccJerkMeanY 
	* fBodyAccJerkMeanZ 
	* fBodyAccJerkStdX 
	* fBodyAccJerkStdY 
	* fBodyAccJerkStdZ 
	* fBodyAccJerkMeanFreqX 
	* fBodyAccJerkMeanFreqY 
	* fBodyAccJerkMeanFreqZ 
	* fBodyGyroMeanX 
	* fBodyGyroMeanY 
	* fBodyGyroMeanZ 
	* fBodyGyroStdX 
	* fBodyGyroStdY 
	* fBodyGyroStdZ 
	* fBodyGyroMeanFreqX 
	* fBodyGyroMeanFreqY 
	* fBodyGyroMeanFreqZ 
	* fBodyAccMagMean 
	* fBodyAccMagStd 
	* fBodyAccMagMeanFreq 
	* fBodyBodyAccJerkMagMean 
	* fBodyBodyAccJerkMagStd 
	* fBodyBodyAccJerkMagMeanFreq 
	* fBodyBodyGyroMagMean 
	* fBodyBodyGyroMagStd 
	* fBodyBodyGyroMagMeanFreq 
	* fBodyBodyGyroJerkMagMean 
	* fBodyBodyGyroJerkMagStd 
	* fBodyBodyGyroJerkMagMeanFreq 
