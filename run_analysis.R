## go to test data directory
setwd("./test")
## merge X_test, y_test and subject_test
X_test<-read.table("X_test.txt")
y_test<-read.table("y_test.txt")
subject_test<-read.table("subject_test.txt")
mergetest<-cbind(subject_test,y_test,X_test)

## go to traning data directory
setwd("../train")
## merge X_train, y_train and subject_train
X_train<-read.table("X_train.txt")
y_train<-read.table("y_train.txt")
subject_train<-read.table("subject_train.txt")
mergetrain<-cbind(subject_train,y_train,X_train)

setwd("../")
## merge train data and test data
mergedata<-rbind(mergetest,mergetrain)

## get features info
features<-read.table("features.txt" )
## get specific column index that contains mean() and std()
cindex<-grepl("mean()|std()",features$V2)
cindex<-append(cindex,rep(TRUE,2),after=0)
## filter out data unneeded
cleandata<-mergedata[,cindex]

## load activity label look up table
activity_labels<-read.table("activity_labels.txt")
## find all activities based on look up table
cleandata_label<-lapply(cleandata$V1.1,function(x) as.character(activity_labels$V2[match(x, activity_labels$V1)]))
## replace the column into character accordingly
cleandata$V1.1<-unlist(cleandata_label)
                        
## find all the feature names based on look up table
colnames(cleandata)<-gsub("V","",colnames(cleandata))
cleandata_features<-lapply(colnames(cleandata), function(x) as.character(features$V2[match(x, features$V1)]))
cleandata_features[3]<-cleandata_features[1]
cleandata_features[1:2]<-c("Subject","Activity")
colnames(cleandata)<-unlist(cleandata_features)

## make colnames more readable
library(dplyr)
final_data<-cleandata %>% group_by(Activity,Subject) %>% summarise_all(mean)

