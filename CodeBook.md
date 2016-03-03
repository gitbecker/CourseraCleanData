# Code book for Clean Data Project

Original data source: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Data has been transformed as follows:  
	Test and training data merged.  
	Data other than mean and standard deviation for all signals has been removed.  
	Variable names updated as described below.  
	Data grouped by subject and activity and averaged.  
	

VARIABLES  

Variable Name			Detail  

subject				An identifier of the subject who carried out the experiment. (1-30)  
activity 			The activity being performed.  
  
tBodyAcc-mean-X 		Signals recorded. Format: [Domain][Signal]-[Calculation]-[direction]  
tBodyAcc-mean-Y 		Domain:   
tBodyAcc-mean-Z 			f - frequency  
tBodyAcc-std-X 				t - time  
tBodyAcc-std-Y 			Calculation:   
tBodyAcc-std-Z 				mean - Mean Value  
tGravityAcc-mean-X 			std - Standard Deviation.  
tGravityAcc-mean-Y 		Direction: X, Y, Z  
tGravityAcc-mean-Z   
tGravityAcc-std-X   
tGravityAcc-std-Y   
tGravityAcc-std-Z   
tBodyAccJerk-mean-X   
tBodyAccJerk-mean-Y   
tBodyAccJerk-mean-Z   
tBodyAccJerk-std-X   
tBodyAccJerk-std-Y   
tBodyAccJerk-std-Z   
tBodyGyro-mean-X   
tBodyGyro-mean-Y   
tBodyGyro-mean-Z   
tBodyGyro-std-X   
tBodyGyro-std-Y   
tBodyGyro-std-Z   
tBodyGyroJerk-mean-X   
tBodyGyroJerk-mean-Y   
tBodyGyroJerk-mean-Z   
tBodyGyroJerk-std-X   
tBodyGyroJerk-std-Y   
tBodyGyroJerk-std-Z   
tBodyAccMag-mean   
tBodyAccMag-std   
tGravityAccMag-mean   
tGravityAccMag-std   
tBodyAccJerkMag-mean   
tBodyAccJerkMag-std   
tBodyGyroMag-mean   
tBodyGyroMag-std   
tBodyGyroJerkMag-mean   
tBodyGyroJerkMag-std   
fBodyAcc-mean-X   
fBodyAcc-mean-Y   
fBodyAcc-mean-Z   
fBodyAcc-std-X   
fBodyAcc-std-Y   
fBodyAcc-std-Z   
fBodyAccJerk-mean-X   
fBodyAccJerk-mean-Y   
fBodyAccJerk-mean-Z   
fBodyAccJerk-std-X    
fBodyAccJerk-std-Y   
fBodyAccJerk-std-Z   
fBodyGyro-mean-X   
fBodyGyro-mean-Y   
fBodyGyro-mean-Z   
fBodyGyro-std-X   
fBodyGyro-std-Y   
fBodyGyro-std-Z   
fBodyAccMag-mean   
fBodyAccMag-std   
fBodyBodyAccJerkMag-mean   
fBodyBodyAccJerkMag-std   
fBodyBodyGyroMag-mean   
fBodyBodyGyroMag-std   
fBodyBodyGyroJerkMag-mean   
fBodyBodyGyroJerkMag-std  