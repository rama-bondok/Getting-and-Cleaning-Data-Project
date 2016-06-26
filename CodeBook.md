This file is a description of the "run_analysis.r" script.

The script "run_analysis.r" performs the following five steps:
Step1: Merge the training and the test sets to create one data set.
Step2: Extract only the measurements on the mean and the standard deviation for each measurement.
Step3: Use descriptive activity names to name the activities in the data set.
Step4: Label the data set with descriptive variable names.
Step5: Create a tidy data set with the average of each variable for each activity and each subject.


First, the corsponding data form the training and the test data sets were merged using the rbind() function.
Next, the data set was filtered by the features with mean and standard deviation measurements.
Then, the activities of the data set were named probably and the whole data set was merged together.
Finally, a tidy data set was created using the ddply() function to subset the data set according
to each subject and each activity and the output was written to the file "tidyData.txt"



#Variables:
 trainData, trainLabels, trainSubjects, testData, testLabels, testSubjects contain the data of the data set.
 data, Labels, subjects contain the bind train and test data, train and test labels and train and test subjects respectively.
 features contains the features names read from the file "features.txt"
 desiredFeatures contains the features names of mean and standard deviation measures.
 activityLabels contains the labels of activities read form the file "activity_labels.txt".
 allData contains the whole merged data set.
 tidyData contains a data set after applying average for each variable according to each activity and each subject.
 The function colMeans() was used to compute the average of each variable.
 