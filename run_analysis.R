
# DO THIS BEFORE RUNNING THE SCRIPT!
# Set the working directory to the directory containing this file.

path <- paste(getwd(), "/UCI HAR Dataset", sep='')

# step 1
# In this step I'm combining the three text data files, subject_?.txt,
# X_?.txt, and y_&.txt into one data frame. This is done for both the test and
# training data. The subject_?.txt file contains a single column with the
# subject id, y_&.txt contains a single column with the activity as an integer,
# and X_?.txt contains the rest of the data. I'm also using the names for the
# data columns, which are in the features.txt file in the "CI HAR Dataset"
# directory.

# get the data column names
filePath <- paste(path, "/features.txt", sep='')
dataNames <- read.table(filePath)

# create subject dataframe
filePath <- paste(path, "/test/subject_test.txt", sep='')
subject <- read.table(filePath)
names(subject) <- "Subject"

# create activity dataframe
filePath <- paste(path, "/test/y_test.txt", sep='')
activity <- read.table(filePath)
names(activity) <- "Activity"

# create dataframe for the rest of the data
filePath <- paste(path, "/test/X_test.txt", sep='')
testData <- read.table(filePath)
names(testData) <- dataNames[, 2]

# merge the dataframes
testData <- cbind(subject, testData)
testData <- cbind(activity, testData)

# repeat the above steps for the training data
# create subject dataframe
filePath <- paste(path, "/train/subject_train.txt", sep='')
subject <- read.table(filePath)
names(subject) <- "Subject"

# create activity dataframe
filePath <- paste(path, "/train/y_train.txt", sep='')
activity <- read.table(filePath)
names(activity) <- "Activity"

# create dataframe for the rest of the data
filePath <- paste(path, "/train/X_train.txt", sep='')
trainData <- read.table(filePath)
names(trainData) <- dataNames[, 2]

# merge the dataframes
trainData <- cbind(subject, trainData)
trainData <- cbind(activity, trainData)

# combine the test and training data
data <- rbind(trainData, testData)

# clean up
rm(activity); rm(dataNames); rm(subject); rm(testData); rm(trainData)

# end of step 1
# All of the data are now in the data dataframe.

# step 2
# I'm selecting the 18 columns that end exactly in mean() or std().
# This is done by matching the end of string only.
cols <- c(grep("mean..$", names(data)), grep("std..$", names(data)))

# ALTERNATIVE SOLUTION!
# All the columns contaning mean or std could be selected using;
# cols <- c(grep("mean()", names(data), fixed = TRUE), grep("std()",
#           names(data), fixed = TRUE))

# Extract the columns, include subject and activity columns
harMeanStd <- data[, c(2, 1, cols)]

# step 3
# Convert the activity column into factors using the values in the
# activity_labels.txt file.
filePath <- paste(path, "/activity_labels.txt", sep='')
labels <- read.table(filePath)
harMeanStd[ ,2 ] <-
    factor(harMeanStd[,2], levels = labels[,1], labels = labels[,2])

# step 4 - rename columns
# New column names done by hand. Details in the README file.
descriptiveNames <- c(
    "Subject", "Activity",
    "BodyAccelerationMagnitudeMean",
    "GravityAccelerationMagnitudeMean",
    "BodyAccelerationJerkMagnitudeMean",
    "BodyGyroscopeMagnitudeMean",
    "BodyGyroscopeJerkMagnitudeMean",
    "BodyAccelerationMagnitudeFFTMean",
    "BodyAccelerationJerkMagnitudeFFTMean",
    "BodyGyroscopeMagnitudeFFTMean",
    "BodyGyroscopeJerkMagnitudeFFTMean",

    "BodyAccelerationMagnitudeStd",
    "GravityAccelerationMagnitudeStd",
    "BodyAccelerationJerkMagnitudeStd",
    "BodyGyroscopeMagnitudeStd",
    "BodyGyroscopeJerkMagnitudeStd",
    "BodyAccelerationMagnitudeFFTStd",
    "BodyAccelerationJerkMagnitudeFFTStd",
    "BodyGyroscopeMagnitudeFFTStd",
    "BodyGyroscopeJerkMagnitudeFFTStd"
    )

names(harMeanStd) <- descriptiveNames

# step 5.
# Aggregate the data on Activity and Subject. Compute the mean of
# each numeric value.
harAggregate <- aggregate(harMeanStd[, 3:20], by = list(harMeanStd$Activity,
        harMeanStd$Subject), FUN = mean, na.rm=TRUE)

# Rename the group columns back to their original names.
names(harAggregate)[1] <- names(harMeanStd)[2]
names(harAggregate)[2] <- names(harMeanStd)[1]

# Write the data to a text file.
resultPath <- paste(getwd(), "/result.txt", sep='')
write.table(harAggregate, file=resultPath, sep = ",", row.name = FALSE)
