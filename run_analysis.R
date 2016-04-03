##  John Hopkins course: Getting and Cleaning Data
##  
## initialisation settings
setwd("~/GitHub/Getting and Cleaning Data Course Project/")
library(dplyr)
library(plyr)

## Part: getting the data
    url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
    download.file(url, "Dataset.zip")
    ## The download is zipped file
    ##   In my first attempt I unzipped the data to Data directory, but it already is in a subdir
    ##   I renamed that directory to data
    unzip("Dataset.zip", exdir = ".")
    # rename will fail, if data directory already exists
    if (file.exists("data")) { unlink("data", recursive=TRUE)}
    file.rename("UCI HAR Dataset", "data")
    ## lets remove what we do not need anymore
    file.remove("Dataset.zip")

## Part 1: Merges the training and the test sets to create one data set. 

    ## 1.A read files with information we need
    
        ## Activity-labels
        activityLabels <- read.table("data/activity_labels.txt")
        names(activityLabels) <- c("activitylabel", "activity")
        
        features <- read.table("data/features.txt")
        names(features) <- c("featurelabel", "feature")
        # Extracts only the measurements on the mean and standard deviation for each measurement
        #   It is unclear for me if we also should use the meanFreq
        measurements <- grep("mean()|std()", features$feature)
    
    ## 1.B now get the data
        ## train, only use the columns we need and make it to one table
        train <- read.table("data/train/X_train.txt")[measurements]
        names(train) <- features[measurements,2]
        trainlabels <- read.table("data/train/y_train.txt")
        names(trainlabels) <- c("activity")
        trainsubjects <- read.table("data/train/subject_train.txt")
        names(trainsubjects) <- c("subject")
        train <- cbind(trainsubjects,trainlabels,train)
        
        
        ## test, only using the columns we need. Also make it into one table
        test <- read.table("data/test/X_test.txt")[measurements]
        names(test) <- features[measurements,2]
        testlabels <- read.table("data/test/y_test.txt")
        names(testlabels) <- c("activity")
        testsubjects <- read.table('data/test/subject_test.txt')
        names(testsubjects) <- c("subject")
        test <- cbind(testsubjects, testlabels, test)
        
        ## Now we can combine the tables to 1 big table
        ## the variablenames are already set, but need cleaning
        wearabledata <- rbind(train, test)
        names(wearabledata) <- gsub("-mean", "Mean", names(wearabledata))
        names(wearabledata) <- gsub("-std", "Std", names(wearabledata))
        names(wearabledata) <- gsub("[()-]", "", names(wearabledata))
        names(wearabledata) <- tolower(names(wearabledata))
        
        # change activitynumbers with names and make factor
        wearabledata$activity <- factor(wearabledata$activity, levels = activityLabels[,1], labels = activityLabels[,2])
        wearabledata$subject <- factor(wearabledata$subject)
        ## lets remove the data we do not use any more
        remove(test)
        remove(testlabels)
        remove(testsubjects)
        remove(train)
        remove(trainsubjects)
        remove(trainlabels)
        
    ## Create Tiny.txt with ddply, I've choosen to separate the files, allthough it is a txt file
    tiny <- ddply(wearabledata, .(subject, activity), function(x) colMeans(x[, 3:ncol(wearabledata)]))
    write.table(tiny, "tidy.txt", row.names = FALSE, quote = FALSE, sep = ",")     
        