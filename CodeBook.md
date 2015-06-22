#Code Book
##Data
The data set is based on the smart phone accelerometer and gyroscope data found in this data set: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones . It has data for various subjects performing different activities. From that data only the data for the mean and standard deviation of the measurement was kept by selecting just the features containing mean() or std(). Then the mean was calculated for all measurements per subject and activity.  
  
This is a description of how the original data was collected:  
> The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.  
>   
> The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details.
##Variables
###Subject
The subject that performed the activity.   
Integer 1-30.
###Activity
The activity that was performed.  
String with the name of the activity.
###tBodyAcc.mean...X
All the following measurements follow the same pattern, so this information applies to all the following variables. The name of the variable is the feature of smart phone, followed by mean or std and the axis. The names closely resembles the features.txt of the source data for traceability.  
Values are normalised and bound between -1 and 1.
###tBodyAcc.mean...Y
###tBodyAcc.mean...Z
###tGravityAcc.mean...X
###tGravityAcc.mean...Y
###tGravityAcc.mean...Z
###tBodyAccJerk.mean...X
###tBodyAccJerk.mean...Y
###tBodyAccJerk.mean...Z
###tBodyGyro.mean...X
###tBodyGyro.mean...Y
###tBodyGyro.mean...Z
###tBodyGyroJerk.mean...X
###tBodyGyroJerk.mean...Y
###tBodyGyroJerk.mean...Z
###tBodyAccMag.mean..
###tGravityAccMag.mean..
###tBodyAccJerkMag.mean..
###tBodyGyroMag.mean..
###tBodyGyroJerkMag.mean..
###fBodyAcc.mean...X
###fBodyAcc.mean...Y
###fBodyAcc.mean...Z
###fBodyAccJerk.mean...X
###fBodyAccJerk.mean...Y
###fBodyAccJerk.mean...Z
###fBodyGyro.mean...X
###fBodyGyro.mean...Y
###fBodyGyro.mean...Z
###fBodyAccMag.mean..
###fBodyBodyAccJerkMag.mean..
###fBodyBodyGyroMag.mean..
###fBodyBodyGyroJerkMag.mean..
###angle.tBodyAccJerkMean..gravityMean.
###tBodyAcc.std...X
###tBodyAcc.std...Y
###tBodyAcc.std...Z
###tGravityAcc.std...X
###tGravityAcc.std...Y
###tGravityAcc.std...Z
###tBodyAccJerk.std...X
###tBodyAccJerk.std...Y
###tBodyAccJerk.std...Z
###tBodyGyro.std...X
###tBodyGyro.std...Y
###tBodyGyro.std...Z
###tBodyGyroJerk.std...X
###tBodyGyroJerk.std...Y
###tBodyGyroJerk.std...Z
###tBodyAccMag.std..
###tGravityAccMag.std..
###tBodyAccJerkMag.std..
###tBodyGyroMag.std..
###tBodyGyroJerkMag.std..
###fBodyAcc.std...X
###fBodyAcc.std...Y
###fBodyAcc.std...Z
###fBodyAccJerk.std...X
###fBodyAccJerk.std...Y
###fBodyAccJerk.std...Z
###fBodyGyro.std...X
###fBodyGyro.std...Y
###fBodyGyro.std...Z
###fBodyAccMag.std..
###fBodyBodyAccJerkMag.std..
###fBodyBodyGyroMag.std..
###fBodyBodyGyroJerkMag.std..