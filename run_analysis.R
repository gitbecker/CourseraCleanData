
##############################################
## Coursera
## Getting and Cleaning Data
## 2016-03-03
## Peter Becker
##############################################

## initial setup
rm(list=ls())
library(dplyr)

## Read in the data sets
testdata <- read.table("./data/UCI HAR Dataset/test/X_test.txt")
trainingdata <- read.table("./data/UCI HAR Dataset/train/X_train.txt")
testactivity <- read.table("./data/UCI HAR Dataset/test/y_test.txt")
trainingactivity <- read.table("./data/UCI HAR Dataset/train/y_train.txt")
testsubject <- read.table("./data/UCI HAR Dataset/test/subject_test.txt")
trainingsubject <- read.table("./data/UCI HAR Dataset/train/subject_train.txt")
features <- read.table("./data/UCI HAR Dataset/features.txt")
activitylabels <- read.table("./data/UCI HAR Dataset/activity_labels.txt")

## Merge the training and the test sets
combineddata <- rbind(testdata, trainingdata)
combinedactivity <- rbind(testactivity, trainingactivity)
combinedsubject <- rbind(testsubject, trainingsubject)

## Remove the original data variables
rm(testdata)
rm(trainingdata)
rm(testactivity)
rm(trainingactivity)
rm(testsubject)
rm(trainingsubject)

## Add variable names
colnames(combineddata) <- gsub("\\(\\)","",features[[2]])

## Select mean and standard deviation columns
columnstokeep <- grepl("-mean\\(\\)|-std\\(\\)" ,features[[2]])

## Remove other fields
combineddata <- combineddata[,columnstokeep]

## Update activity values
combinedactivity <- combinedactivity %>%
                        merge( activitylabels, by.x="V1", by.y="V1",all=TRUE) %>%
                        select(V2)

##A dd variable names
colnames(combinedactivity) <- "activity"
colnames(combinedsubject) <- "subject"

## Combine all the data
completedata <- cbind(combinedsubject, combinedactivity, combineddata)

## Averages
average <- completedata %>%
                group_by(subject,activity) %>%
                summarise_each(funs(mean)) %>%
                arrange(subject, activity)

## Save File
write.table(average, file="./data/courseraCleanDataProject.txt", row.names=FALSE)