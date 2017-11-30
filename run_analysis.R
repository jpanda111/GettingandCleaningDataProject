## downloading and unzip
file<-"getdata_dataset.zip"
if (!file.exists(file)){
  url<-"https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
  download.file(url, file, method="curl")
}

if (!file.exists("UCI HAR Dataset")) {
  unzip(file)
}

## step 1

##go to test data directory
setwd("./UCI HAR Dataset/test")
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

## step 2

##get features info
features<-read.table("features.txt" )
## get specific column index that contains mean() and std()
cindex<-grepl("mean()|std()",features$V2)
cindex<-append(cindex,rep(TRUE,2),after=0)
## filter out data unneeded
cleandata<-mergedata[,cindex]

## step 3

## load activity label look up table
activity_labels<-read.table("activity_labels.txt")
## find all activities based on look up table
cleandata_label<-lapply(cleandata$V1.1,function(x) as.character(activity_labels$V2[match(x, activity_labels$V1)]))
## replace the column into character accordingly
cleandata$V1.1<-unlist(cleandata_label)

## step 4

## find all the feature names based on look up table
cleandata_features<- colnames(cleandata) %>% gsub("V","",.) %>% lapply(function(x) as.character(features$V2[match(x, features$V1)]))
cleandata_features[3]<-cleandata_features[1]
cleandata_features[1:2]<-c("Subject","Activity")
colnames(cleandata)<-unlist(cleandata_features)

## make feature names more readable
colnames(cleandata)<- colnames(cleandata) %>% gsub("Acc", "Accelerometer",.) %>%
  gsub("Gyro","Gyroscope",.) %>% gsub("BodyBody","Body",.) %>% gsub("Mag","Magnitude",.) %>%
  gsub("^t","Time",.) %>% gsub("Freq","Frequency",.) %>% gsub("^f","Frequency",.) %>%
  gsub("-mean()","Mean",.) %>% gsub("-std()","Std",.) %>% gsub("[-()]","",.)

## step 5

## group the data and take the average data for each (subject, activity) pair
library(dplyr)
final_data<-cleandata %>% group_by(Activity,Subject) %>% summarise_all(mean)

## store the tidy data in .txt format
write.table(final_data,"final_data.txt", row.names = FALSE)

