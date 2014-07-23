###################################################################################################

## Getting and Cleaning Data (getdata-005) Course Project
## Jed Aureus Gonzales
## https://github.com/jedau/

#run_analysis.R file description:
# 1. Merges the training and the test sets to create one data set.
# 2. Extracts only the measurements on the mean and standard deviation for each measurement. 
# 3. Uses descriptive activity names to name the activities in the data set
# 4. Appropriately labels the data set with descriptive variable names. 
# 5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 

###################################################################################################

# Make sure that your working directory is the same directory with the folder
# "UCI HAR Dataset". If not, setwd("diretory/of/folder") to that directory.

getwd()

# Read and Assign the necessary column names to activity_labels.txt

activityList <- read.table("UCI HAR Dataset/activity_labels.txt", header = FALSE)
colnames(activityList) <- c("activityId", "activity")

# Read features.txt

featuresList <- read.table("UCI HAR Dataset/features.txt", header = FALSE)

# Read and Merge the Training data
## Note: Be careful with the case of the filenames, the version used at the
## time of coding has uppercase 'X' for X_train.txt and lowercase 'y' for
## y_train.txt. Failure to recognize such discrepancies would result in an error.

subjectTrain <- read.table("UCI HAR Dataset/train/subject_train.txt", header = FALSE)
colnames(subjectTrain) <- "subjectId"
xTrain <- read.table("UCI HAR Dataset/train/X_train.txt", header = FALSE)
colnames(xTrain) <- featuresList[,2]
yTrain <- read.table("UCI HAR Dataset/train/y_train.txt", header = FALSE)
colnames(yTrain) <- "activityId"
trainData <- cbind(subjectTrain, yTrain, xTrain)

# Read and Merge the Test data

subjectTest <- read.table("UCI HAR Dataset/test/subject_test.txt", header = FALSE)
colnames(subjectTest) <- "subjectId"
xTest <- read.table("UCI HAR Dataset/test/X_test.txt", header = FALSE)
colnames(xTest) <- featuresList[,2]
yTest <- read.table("UCI HAR Dataset/test/y_test.txt", header = FALSE)
colnames(yTest) <- "activityId"
testData <- cbind(subjectTest, yTest, xTest)

# (ITEM 1) Merges the training and the test sets to create one data set

mergedData <- rbind(trainData, testData)
mergedCol <- colnames(mergedData)

# (ITEM 2) Extracts only the measurements on the mean and standard deviation
# for each measurement. 

selectedCol <- (grepl("activity..", mergedCol) | grepl("subject..", mergedCol) |
                    grepl("-mean..", mergedCol) & !grepl("-meanFreq..", mergedCol) |
                    grepl("-mean()-X", mergedCol) | grepl("-mean()-Y", mergedCol) |
                    grepl("-mean()-Z", mergedCol) | grepl("-std..", mergedCol))

mergedData <- mergedData[selectedCol]

# (ITEM 3) Uses descriptive activity names to name the activities in the data set
## For the purpose of this project, the plyr library was used to merge lists.

library(plyr)
mergedData <- join(mergedData, activityList, by = "activityId")
mergedData$activityId <- NULL

# (ITEM 4) Appropriately labels the data set with descriptive variable names
## Google's R naming convention was used as the reference for the label names.

names(mergedData) <- gsub('-mean', '.Mean', names(mergedData))
names(mergedData) <- gsub('-std', '.Std', names(mergedData))
names(mergedData) <- gsub('-X', '.X', names(mergedData))
names(mergedData) <- gsub('-Y', '.Y', names(mergedData))
names(mergedData) <- gsub('-Z', '.Z', names(mergedData))
names(mergedData) <- gsub('[-()]', '', names(mergedData))
names(mergedData) <- gsub('^(t)', 'time.', names(mergedData))
names(mergedData) <- gsub('^(f)', 'freq.', names(mergedData))

# (ITEM 5) Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 
## For the purpose of this project, the reshape2 library was used melt and cast.
## For more information, go to http://seananderson.ca/2013/10/19/reshape.html

library(reshape2)
meltedData <- melt(mergedData, id = c("subjectId", "activity"))
tidyData <- dcast(meltedData, subjectId + activity ~ variable, mean)

# Write out the tidy data output into text and csv files.

write.table(file = "tidyData.txt", x = tidyData, row.names = FALSE)
tidyCSV <- gsub(' ', ',', tidyData)
write.csv(file = "tidyData.csv", x = tidyData, row.names = FALSE)