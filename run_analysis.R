#setup
rm(list = ls())
library(dplyr)
setwd("C:/Users/maschigoda/Desktop/coursera/Cleaning data/data")

#download zipped data
url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"

#unzip data
zip <- download.file(url, dest = "./zip.zip")
features <- unz(zip, "features")
unzip("./zip.zip")

#read in tables
x_train <- read.table("./UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("./UCI HAR Dataset/train/Y_train.txt")
sub_train <- read.table("./UCI HAR Dataset/train/subject_train.txt")
x_test <- read.table("./UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("./UCI HAR Dataset/test/Y_test.txt")
sub_test <- read.table("./UCI HAR Dataset/test/subject_test.txt")
features <- read.table("./UCI HAR Dataset/features.txt")
activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt")

#1. Merges the training and the test sets to create one data set.
x_total <- rbind(x_train, x_test)
y_total <- rbind(y_train, y_test)
sub_total <- rbind(sub_train, sub_test)

#2. Extracts only the measurements on the mean and standard deviation for each measurement.
selected_features <- features[grep("mean|std",features[,2])]
x_total <- x_total[,selected_features[,1]]

#3. Uses descriptive activity names to name the activities in the data set.
colnames(y_total) <- "activity"
y_total$activitylabel <- factor(y_total$activity, labels = as.character(activity_labels[,2]))
activitylabel <- y_total[,-1]

#4. Appropriately labels the data set with descriptive variable names.
colnames(x_total) <- features[selected_features[,1],2]

#5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
colnames(sub_total) <- "subject"
total <- cbind(x_total, y_total, sub_total)
total_mean <- total %>% group_by(activitylabel, subject) %>% summarize_each(funs(mean))
write.table(total_mean, file = "./UCI HAR Dataset/tidydata.txt", row.names = FALSE, col.names = TRUE)
