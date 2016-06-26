This repository contains the solution of the "Getting and Cleaning Data Course" project.
This project is about cleaning the "Smartphone-Based Recognition of Human Activities 
and Postural Transitions Data Set".
This data set contains measuers taken from Samsung Galaxy SII sensors.
In paricular, the accelometer and gyroscope sensors. These sensors measures various variables
in different human activities (such as: walking, standing, sitting...)



This file descripes the content of each file in this repo.

The "run_analysis.r" is an R script created to clean the data and output it 
as a tidy data set as descriped in the following five steps:
Step1: Merge the training and the test sets to create one data set.
Step2: Extract only the measurements on the mean and the standard deviation for each measurement.
Step3: Use descriptive activity names to name the activities in the data set.
Step4: Label the data set with descriptive variable names.
Step5: Create a tidy data set with the average of each variable for each activity and each subject.


The "CodeBook.md" is a text file descriping the variables used in the "run_analysis.r" script.


The "tidyData.txt" is a text file containing a tidy data set which is the output of applying 
the "run_analysis.r" script to clean the orignial data set.