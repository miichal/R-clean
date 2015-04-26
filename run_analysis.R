#Read the test and train data from file to dataframes

testData<-read.table(file="./X_test.txt")
trainData<-read.table(file="./X_train.txt")

mergeData<-rbind(testData,trainData)

#read labels
labels<-read.table(file="./features.txt")

#Get mean and standard deviation columns
meanstdLab<-grep("-mean()|-std()",labels$V2)

#head(mergeData[,meanLab])
msData<-mergeData[,meanLab]

#Put column names
varColNames<-labels[meanLab,2]

colnames(msData)<-as.vector(varColNames)

#Append Labels to data
activities<-read.table(file="./activity_labels.txt")
testLabels<-read.table(file="./y_test.txt")
trainLabels<-read.table(file="./y_train.txt")
mergeLabels<-rbind(testLabels,trainLabels)

newLab<-factor(mergeLabels$V1, levels=c(1,2,3,4,5,6), labels=activities$V2)
msData$Activity<-newLab

#Mean of each variable for each activity
walData<-msData[msData$Activity=="WALKING",]
walmeanData<-sapply(walData,mean,na.rm=TRUE)

walupData<-msData[msData$Activity=="WALKING_UPSTAIRS",]
walupmeanData<-sapply(walupData,mean,na.rm=TRUE)

waldownData<-msData[msData$Activity=="WALKING_DOWNSTAIRS",]
waldownmeanData<-sapply(waldownData,mean,na.rm=TRUE)

sitData<-msData[msData$Activity=="SITTING",]
sitmeanData<-sapply(sitData,mean,na.rm=TRUE)

standData<-msData[msData$Activity=="STANDING",]
standmeanData<-sapply(standData,mean,na.rm=TRUE)

layData<-msData[msData$Activity=="LAYING",]
laymeanData<-sapply(layData,mean,na.rm=TRUE)

tidySet<-rbind(walmeanData,walupmeanData, waldownmeanData, sitmeanData, standmeanData, laymeanData)

tidySet<-data.frame(tidySet)
tidySet$Activity<-actVect

#Export data
write.table(x = tidySet, file = "./tidyData.txt", row.name=FALSE )

