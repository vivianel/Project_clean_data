The R script called run_analysis.R does the following:

1. Downloads the files from the link: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
2. Merges the training and the test sets and create one data set. The tables are ordered as: subject, y(activity) and x(measurements).
3. Extracts only the measurements on the mean and standard deviation for each variable in table x. 
4. Uses descriptive activity names to name the activities in the data set (links value in y_test and y_train to the activity_levels.txt)
5. Appropriately labels the data set with descriptive variable names (from the file features.txt). 
6. Creates tidy data set with the average of each variable for each activity and each subject.
7.returns a tidy data set named: av 