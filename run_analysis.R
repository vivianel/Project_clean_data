#reading the data
#reding the table "features.txt" to rename the columns of the X_test and X_train datasets
     features <- read.table("features.txt")
     #selecting only the name of those features
     feat <- as.character(features[,2])
     #reading the name of the activities: to be used later to name
     act <- read.table("activity_labels.txt")
#change to test subfolder
setwd("test")
     #reading the subject data
     sub <- read.table("subject_test.txt")
     #rename the columns
     colnames(sub) <- ("subject")
     #reading the Acc and Gyro data
     x <- read.table("X_test.txt")
     #rename the columns
     colnames(x) <- feat
     #read the activity data
     y <- read.table("y_test.txt")
     #rename the column
     colnames(y) <- ("activity")
     #form the fisrt table_text
     table_test <- cbind(sub,y,x)
setwd("..")
     #change to train subfolder
setwd("train")
     #reading the same three files to form the second table_train
     sub <- read.table("subject_train.txt")
     colnames(sub) <- ("subject")
     x <- read.table("X_train.txt")
     colnames(x) <- feat
     y <- read.table("y_train.txt")
     colnames(y) <- ("activity")
     table_train <- cbind(sub,y,x)


##pay attention that the 4th step on the programing assignment has already been completed here by renaming the variables with descriptive names

setwd("..")
     #making only one table
     table <- rbind(table_test, table_train)
     #removing unnecessary data


     #the step one of the coursera programing assignment is here completed
#extract the column names from table (I culd have used the feat variable)
     meas_name <- colnames(table)
#setting counter
     column <- ncol(table)
#used for the size of the select dataset during initialization
     rows <- nrow(table)
#initializing necessary variables
     names <- "empty"
     select <- data.frame(matrix(ncol = 1, nrow = rows))

#loop used to select the columns with names containing mean() or std()
for (i in 1:column){
     # using regular expressions to select the write columns (result is 1 when it's TRUE)
     if (length(grep("mean\\(\\)|std\\(\\)", meas_name[i], ignore.case = FALSE, perl = TRUE, value = FALSE, fixed = FALSE, useBytes = FALSE, invert = FALSE) != 0)) {
          #select the right columns in the table
          select <- cbind(select, table[,i])
          #make a vector with the names selected
          names <- c(names, meas_name[i])
     }
}
#rename the columns of select (pay attention that names has one value that is "empty" to name the empty column used to initialize the data.frame
     colnames(select) <- names
#reset the numver of columns <- counter
     column <- ncol(select)
#make a new table with the fisrt results of table and select by cbind
     table2 <- cbind(table[,1:2], select[,2:column])
#remove unnecesary data

#here the second task of the programming asignemtn is ready



#reset a counter
     rows <- nrow(table2)
#make the loop to replace the number by the activity name
     for (i in 1:rows){
          #check the value
          value <- table2[i,2]
          #replace the value with string
          table2[i,2] <- as.character(act[value,2])
     }
     #remove unnecesary variables

#completed the step number 4 of the programming assignment

#group first by subject and then by activty and obtain the mean value
av <- aggregate(table2[,3:68], list(table2$subject, table2$activity), mean)
av
##end of the 5th assignment

     #clean up the memory

     #rm(feat,sub,x,y,features,table_test, table_train,value,i,table, select,meas_name,names, column, rows, table2, act)
