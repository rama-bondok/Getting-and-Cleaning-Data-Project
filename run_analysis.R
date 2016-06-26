library(dplyr)
library(plyr)

#Step 1
#Merge the training data and test date to create one data set

##Read training data
trainData <- read.table("X_train.txt")
trainLabels <- read.table("y_train.txt")
trainLabels <- rename(trainLabels,activity=V1)
trainSubjects <- read.table("subject_train.txt")
trainSubjects <- rename(trainSubjects,subject=V1)


##Read test data
testData <- read.table("X_test.txt")
testLabels <- read.table("y_test.txt")
testLabels <- rename(testLabels,activity=V1)
testSubjects <- read.table("subject_test.txt")
testSubjects <- rename(testSubjects,subject=V1)

##Merge the two data sets into one
 data <- rbind(trainData,testData)
 
 labels <- rbind(trainLabels,testlabels)
 
 subjects <- rbind(trainSubjects,testSubjects)

 #Step2
 #Extract only the measurements on the mean and standard deviation for each measurement.
 
 ##Read features descripiton
 
features <- read.table("features.txt")

##Get the desired features(ie: features of mean and strandard deviation)
 desiredFeatures <- grep("-(mean|std)",features[,2])

##Subset the data based on the desired features
data <- data[,desiredFeatures]



#Step3
#Use descriptive activity names to name the activities in the data set
 
##Read activity desctiption
 activityLabels <- read.table("activity_labels.txt")
 
##Assign descriptive acitvity names
labels[,1] <- activityLabels[labels[,1],2]


#Step4
#Appropriately labels the data set with descriptive variable names.

##Assign descriptive names for the data set columns
names(data) <- features[desiredFeatures,2]

##bind all data sets into one
allData <- cbind(data,labels,subjects)


#Step5
#Create a second tidy data set with the average for each variable for each activity and each subject.


tidyData <- ddply(allData,.(subject,activity), function(x) colMeans(x[,1:(ncol(allData)-2)]))

#Write the tidyData set to a file
write.table(tidyData,"tidyData.txt",row.name=FALSE)

