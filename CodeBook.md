## DATA ORGANIZATION:

The following data set are used to generate the tidy data set (av):

activity_labels.txt : name of the textual activity description linked to the y datasets in the folders test and train. 

features_info.txt : description of the variables (used to give the detailed name - see in the variable section of this CodeBook) 

features.txt : list the variables measured and name the variables of the x datasets in the folders test and train.   

/test/subject_test.txt : 1-30 (numbers identifying the subject who performed the test)

/test/X_test.txt : measured variables during the test

/test/y_test.txt:  Activity number performed during the test (linked to activity_labels.txt)

/train/subject_train.txt 1-30 :(numbers identifying the subject who performed the train)

/train/X_train.txt : measured variables during the train

/train/y_train.txt : Activity number performed during the train (linked to activity_labels.txt)


## TRANSFORMATIONS:
1. /test/subject_test.txt, /test/X_test.txt and /test/y_test.txt are linked by cbind into table_test.
2. /test/subject_train.txt, /test/X_train.txt and /test/y_train.txt are linked by cbind into table_train.
3. table is created by rbind between table_test and table_train.
4. values of mean and standard deviation are selected in table based on the titles in features.txt file.
5. the values in the y(activity column) is linked to the characters in activity_labels.txt
6. The names of the variables are given based on features.txt file
7. averages are generated grouping the table data set by subject and then by activity. The final values are a av table with 180 values (30 subjects and 6 activities)

## VARIABLES:

After the selection of the average and the standard deviation columns the data is organized in a table with 68 columns. COnsiderign that the two first columns are: subject (the person who tested or trained witj the device) and activity(list of activities which where performed by the subject). The rest of the 66 columns are named by the following order of abbreviations:

1. t(data collected in the time domain) or f (data collected in the frequency domain)
2. Body(body acceleration signal) or Gravity(gravity acceleration signal)
3. Acc(linear velocity measured by the accelerometer) or Gyro (angular velocity measured by the gyroscope)
4. -mean(average of the selected selected) or -std(standard variation of the selected values) or Mag(Magnitude value: calculated by Euclidian norm) or Jerk (Jerk signals: derivation in time)
5. -X (along the x-axis) or -Y (along the y-axis) or -Z (along the z-axis) or -mean(average of the selected selected) or -std(standard variation of the selected values) or Mag(Magnitude value: calculated by Euclidian norm)
6. -X (along the x-axis) or -Y (along the y-axis) or -Z (along the z-axis)


## DETAILED VARIABLE NAMES
tBodyAcc-XYZ
"1" "tBodyAcc-mean()-X"
"2" "tBodyAcc-mean()-Y"
"3" "tBodyAcc-mean()-Z"
"4" "tBodyAcc-std()-X"
"5" "tBodyAcc-std()-Y"
"6" "tBodyAcc-std()-Z"

tGravityAcc-XYZ
"7" "tGravityAcc-mean()-X"
"8" "tGravityAcc-mean()-Y"
"9" "tGravityAcc-mean()-Z"
"10" "tGravityAcc-std()-X"
"11" "tGravityAcc-std()-Y"
"12" "tGravityAcc-std()-Z"

tBodyAccJerk-XYZ
"13" "tBodyAccJerk-mean()-X"
"14" "tBodyAccJerk-mean()-Y"
"15" "tBodyAccJerk-mean()-Z"
"16" "tBodyAccJerk-std()-X"
"17" "tBodyAccJerk-std()-Y"
"18" "tBodyAccJerk-std()-Z"

tBodyGyro-XYZ
"19" "tBodyGyro-mean()-X"
"20" "tBodyGyro-mean()-Y"
"21" "tBodyGyro-mean()-Z"
"22" "tBodyGyro-std()-X"
"23" "tBodyGyro-std()-Y"
"24" "tBodyGyro-std()-Z"

tBodyGyroJerk-XYZ
"25" "tBodyGyroJerk-mean()-X"
"26" "tBodyGyroJerk-mean()-Y"
"27" "tBodyGyroJerk-mean()-Z"
"28" "tBodyGyroJerk-std()-X"
"29" "tBodyGyroJerk-std()-Y"
"30" "tBodyGyroJerk-std()-Z"

tBodyAccMag
"31" "tBodyAccMag-mean()"
"32" "tBodyAccMag-std()"

tGravityAccMag
"33" "tGravityAccMag-mean()"
"34" "tGravityAccMag-std()"

tBodyAccJerkMag
"35" "tBodyAccJerkMag-mean()"
"36" "tBodyAccJerkMag-std()"

tBodyGyroMag
"37" "tBodyGyroMag-mean()"
"38" "tBodyGyroMag-std()"

tBodyGyroJerkMag
"39" "tBodyGyroJerkMag-mean()"
"40" "tBodyGyroJerkMag-std()"

fBodyAcc-XYZ
"41" "fBodyAcc-mean()-X"
"42" "fBodyAcc-mean()-Y"
"43" "fBodyAcc-mean()-Z"
"44" "fBodyAcc-std()-X"
"45" "fBodyAcc-std()-Y"
"46" "fBodyAcc-std()-Z"

fBodyAccJerk-XYZ
"47" "fBodyAccJerk-mean()-X"
"48" "fBodyAccJerk-mean()-Y"
"49" "fBodyAccJerk-mean()-Z"
"50" "fBodyAccJerk-std()-X"
"51" "fBodyAccJerk-std()-Y"
"52" "fBodyAccJerk-std()-Z"

fBodyGyro-XYZ
"53" "fBodyGyro-mean()-X"
"54" "fBodyGyro-mean()-Y"
"55" "fBodyGyro-mean()-Z"
"56" "fBodyGyro-std()-X"
"57" "fBodyGyro-std()-Y"
"58" "fBodyGyro-std()-Z"

fBodyAccMag
"59" "fBodyAccMag-mean()"
"60" "fBodyAccMag-std()"

fBodyAccJerkMag
"61" "fBodyBodyAccJerkMag-mean()"
"62" "fBodyBodyAccJerkMag-std()"

fBodyGyroMag
"63" "fBodyBodyGyroMag-mean()"
"64" "fBodyBodyGyroMag-std()"

fBodyGyroJerkMag
"65" "fBodyBodyGyroJerkMag-mean()"
"66" "fBodyBodyGyroJerkMag-std()"
