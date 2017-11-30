# GettingandCleaningDataProject
to prepare tidy data that can be used for later analysis

## Step 1: Merge the training and test sets to create one data set 
### using cbind to consolidate test data and train data indivually
  * test data: X_test, y_test, subject_test
  * train data: X_train, y_train, subject_train
### using rbind to merge train and test data together  

## Step 2: Extract only the measurements on the mean and standard deviation for each measurement
### using grep to get all the mean() & std() based on features look up table

## Step 3: Use descirptive activity names to name the activities in the data set with look up table from activities
### using lapply and match to get the replacement

## Step 4: Label the data set using descriptive variable names with look up table from features
### using lapply and match to get the replacement

## Step 5: Create a second and independant tidy data set ("final_data") with the average of each variable for every (Subject, Activity) pair
### using group_by and summarise_all to get the average value, final_data has 180 observation in total, each row for one observation and each column for one variable
