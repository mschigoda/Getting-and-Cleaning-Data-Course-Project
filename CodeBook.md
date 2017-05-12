### Overview

TidyData.txt contains 180 rows and 69 columns. Each row has averaged variables for each subject and each activity.

### Variables

The following list includes all of the variables in tidydata.txt:
1.	"activitylabel"
2.	"subject"
3.	"tBodyAcc-mean()-X"
4.	"tBodyAcc-mean()-Y"
5.	"tBodyAcc-mean()-Z"
6.	"tBodyAcc-std()-X"
7.	"tBodyAcc-std()-Y"
8.	"tBodyAcc-std()-Z"
9.	"tGravityAcc-mean()-X"
10.	"tGravityAcc-mean()-Y"
11.	"tGravityAcc-mean()-Z"
12.	"tGravityAcc-std()-X"
13.	"tGravityAcc-std()-Y"
14.	"tGravityAcc-std()-Z"
15.	"tBodyAccJerk-mean()-X"
16.	"tBodyAccJerk-mean()-Y"
17.	"tBodyAccJerk-mean()-Z"
18.	"tBodyAccJerk-std()-X"
19.	"tBodyAccJerk-std()-Y"
20.	"tBodyAccJerk-std()-Z"
21.	"tBodyGyro-mean()-X"
22.	"tBodyGyro-mean()-Y"
23.	"tBodyGyro-mean()-Z"
24.	"tBodyGyro-std()-X"
25.	"tBodyGyro-std()-Y"
26.	"tBodyGyro-std()-Z"
27.	"tBodyGyroJerk-mean()-X"
28.	"tBodyGyroJerk-mean()-Y"
29.	"tBodyGyroJerk-mean()-Z"
30.	"tBodyGyroJerk-std()-X"
31.	"tBodyGyroJerk-std()-Y"
32.	"tBodyGyroJerk-std()-Z"
33.	"tBodyAccMag-mean()"
34.	"tBodyAccMag-std()"
35.	"tGravityAccMag-mean()"
36.	"tGravityAccMag-std()"
37.	"tBodyAccJerkMag-mean()"
38.	"tBodyAccJerkMag-std()"
39.	"tBodyGyroMag-mean()"
40.	"tBodyGyroMag-std()"
41.	"tBodyGyroJerkMag-mean()"
42.	"tBodyGyroJerkMag-std()"
43.	"fBodyAcc-mean()-X"
44.	"fBodyAcc-mean()-Y"
45.	"fBodyAcc-mean()-Z"
46.	"fBodyAcc-std()-X"
47.	"fBodyAcc-std()-Y"
48.	"fBodyAcc-std()-Z"
49.	"fBodyAccJerk-mean()-X"
50.	"fBodyAccJerk-mean()-Y"
51.	"fBodyAccJerk-mean()-Z"
52.	"fBodyAccJerk-std()-X"
53.	"fBodyAccJerk-std()-Y"
54.	"fBodyAccJerk-std()-Z"
55.	"fBodyGyro-mean()-X"
56.	"fBodyGyro-mean()-Y"
57.	"fBodyGyro-mean()-Z"
58.	"fBodyGyro-std()-X"
59.	"fBodyGyro-std()-Y"
60.	"fBodyGyro-std()-Z"
61.	"fBodyAccMag-mean()"
62.	"fBodyAccMag-std()"
63.	"fBodyBodyAccJerkMag-mean()"
64.	"fBodyBodyAccJerkMag-std()"
65.	"fBodyBodyGyroMag-mean()"
66.	"fBodyBodyGyroMag-std()"
67.	"fBodyBodyGyroJerkMag-mean()"
68.	"fBodyBodyGyroJerkMag-std()"
69.	“activity”

Activity variable is factor type. Subject variable is integer type. All the other variables are numeric type.

### Data

The data tidydata.txt is based on is the Human Activity Recognition Using Smartphones Dataset (Version 1.0). The following is the description of the data provided in the README file that came with the data: “The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.”

The original dataset included the following files:
1.	'README.txt'
2.	'features_info.txt': Shows information about the variables used on the feature vector.
3.	'features.txt': List of all features.
4.	'activity_labels.txt': Links the class labels with their activity name.
5.	'train/X_train.txt': Training set.
6.	'train/y_train.txt': Training labels.
7.	'test/X_test.txt': Test set.
8.	'test/y_test.txt': Test labels.

### Transformations performed to clean up the data

To clean up the original data, the following transformations were performed.
1.	The training and the test sets were merged to create one data set.
2.	Only the mean and standard deviation variables were kept.
3.	Descriptive activity names were applied to the activities in the data set using the activity_labels file.
4.	Appropriate labels were applied to the data set with descriptive variable names using the features file.
5.	A second, independent tidy data set was created with the average of each variable for each activity and each subject (tidydata.txt).


