# This file is describing the run_analysis.R file

1. Data was read from text file using method read.table() to dataframes testData and trainData
2. Those dataframes were merged to mergeData using method rbind()
3. Labels were read from features.txt to labels variable and used to get the right columns of dataframe using grep method
4. Those columns with means and standard deviation were subtracted to msData dataframe
5. Column names were added to dataframe
6. Append list of labels for train and test data using the name (STANDING, WALKING, etc..)
7. Counting the mean of each activity
8. Make the new dataset with means of values for each label

Used variables:
activities - loaded list of activity_labels.txt
labels - loaded list of features.txt
layData - data for just LAYING label
mergeData - merged train and test data
mergeLables - merged train and test labels
msData - dataset with just mean and standard deviation variables
sitData - data for just SITTING label
standData - data for just STANDING label
testData - loaded list of X_test
testLabels - loaded list of y_test
tidySet - final dataframe exported to the text file
trainData - loaded list of X_train
trainLabels - loaded list of y_train
walData - data just for WALKING label
walDownData - data just for WALKING_DOWNSTAIRS label
walUpData - data just for WALKING_UPSTAIRS label
laymeanData - data with mean values for LAYING label
meanstdLab - vector to separate mean and standard deviation variables
newLab - adding string categories and map to label numbers
sitmeanData - data with mean values for SITTING label
standmeanData - data with mean values for STANDING label
varColNames - vector with column names for dataset
waldownmeanData - data with mean values for WALKING_DOWNSTAIRS label
walmeanData - data with mean values for WALKING label
walupmeanData - data with mean values for WALKING_UPSTAIRS label


