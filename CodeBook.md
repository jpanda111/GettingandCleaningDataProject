## CodeBook
### This code book summarizes the contents of the final_data.txt

## 2012 - Human Activity Recognition Using Smartphones Data Set
### Original data comes from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip.

## contents of final_data.txt
### Activity 1
  * six activities that each person performed
    * 1 WALKING
    * 2 WALKING_UPSTAIRS
    * 3 WALKING_DOWNSTAIRS
    * 4 SITTING
    * 5 STANDING
    * 6 LAYING

### Subject 2
 * 30 subjects within an age bracket of 19-48 years. Unique ID for each subject
   * 01.. 30

### Features 2
 * 79 features for accelerometer and gyroscope 3-axial signals. Only mean value and Standard deviation value extracted. Averaged           observation data for each (Subject, Activity) pair.
  
 * The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These     time domain signals were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (TimeBodyAccelerometerXYZ and TimeGravityAccelerometerXYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz.
  
 * Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (TimeBodyAccelerometerJerk-XYZ and TimeBodyGyroscopeJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (TimeBodyAccelerometerMagnitude, TimeGravityAccelerometerMagnitude, TimeBodyAccelerometerJerkMagnitude, TimeBodyGyroscopeMagnitude, TimeBodyGyroscopeJerkMagnitude). 
  
 * Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing FrequencyBodyAccelerometerXYZ, FrequencyBodyAccelerometerJerkXYZ, FrequencyBodyGyroscopeXYZ, FrequencyBodyAccelerometerJerkMagnitude, FrequencyBodyGyroscopeMagnitude, FrequencyBodyGyroscopeJerkMagnitude.
 * 'X', 'Y', 'Z' is used to denote 3-axial signals in the X, Y and Z directions. 
 * Mean: Mean value
 * Std: Standard deviation
  
 * Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:
 
  * TimeBodyAccelerometerMean
  * TimeBodyAccelerometerJerkMean
  * TimeBodyGyroscopeMean
  * TimeBodyGyroscopeJerkMean
  
* Here is the complete list
* TimeBodyAccelerometerMeanX"
* TimeBodyAccelerometerMeanY"
* TimeBodyAccelerometerMeanZ"
* TimeBodyAccelerometerStdX"
* TimeBodyAccelerometerStdY"
* TimeBodyAccelerometerStdZ"
* TimeGravityAccelerometerMeanX"
* TimeGravityAccelerometerMeanY"
* TimeGravityAccelerometerMeanZ"
* TimeGravityAccelerometerStdX"
* TimeGravityAccelerometerStdY"
* TimeGravityAccelerometerStdZ"
* TimeBodyAccelerometerJerkMeanX"
* TimeBodyAccelerometerJerkMeanY"
* TimeBodyAccelerometerJerkMeanZ"
* TimeBodyAccelerometerJerkStdX"
* TimeBodyAccelerometerJerkStdY"
* TimeBodyAccelerometerJerkStdZ"
* TimeBodyGyroscopeMeanX"
* TimeBodyGyroscopeMeanY"
* TimeBodyGyroscopeMeanZ"
* TimeBodyGyroscopeStdX"
* TimeBodyGyroscopeStdY"
* TimeBodyGyroscopeStdZ"
* TimeBodyGyroscopeJerkMeanX"
* TimeBodyGyroscopeJerkMeanY"
* TimeBodyGyroscopeJerkMeanZ"
* TimeBodyGyroscopeJerkStdX"
* TimeBodyGyroscopeJerkStdY"
* TimeBodyGyroscopeJerkStdZ"
* TimeBodyAccelerometerMagnitudeMean"
* TimeBodyAccelerometerMagnitudeStd"
* TimeGravityAccelerometerMagnitudeMean"
* TimeGravityAccelerometerMagnitudeStd"
* TimeBodyAccelerometerJerkMagnitudeMean"
* TimeBodyAccelerometerJerkMagnitudeStd"
* TimeBodyGyroscopeMagnitudeMean"
* TimeBodyGyroscopeMagnitudeStd"
* TimeBodyGyroscopeJerkMagnitudeMean"
* TimeBodyGyroscopeJerkMagnitudeStd"
* FrequencyBodyAccelerometerMeanX"
* FrequencyBodyAccelerometerMeanY"
* FrequencyBodyAccelerometerMeanZ"
* FrequencyBodyAccelerometerStdX"
* FrequencyBodyAccelerometerStdY"
* FrequencyBodyAccelerometerStdZ"
* FrequencyBodyAccelerometerMeanFrequencyX"
* FrequencyBodyAccelerometerMeanFrequencyY"
* FrequencyBodyAccelerometerMeanFrequencyZ"
* FrequencyBodyAccelerometerJerkMeanX"
* FrequencyBodyAccelerometerJerkMeanY"
* FrequencyBodyAccelerometerJerkMeanZ"
* FrequencyBodyAccelerometerJerkStdX"
* FrequencyBodyAccelerometerJerkStdY"
* FrequencyBodyAccelerometerJerkStdZ"
* FrequencyBodyAccelerometerJerkMeanFrequencyX"
* FrequencyBodyAccelerometerJerkMeanFrequencyY"
* FrequencyBodyAccelerometerJerkMeanFrequencyZ"
* FrequencyBodyGyroscopeMeanX"
* FrequencyBodyGyroscopeMeanY"
* FrequencyBodyGyroscopeMeanZ"
* FrequencyBodyGyroscopeStdX"
* FrequencyBodyGyroscopeStdY"
* FrequencyBodyGyroscopeStdZ"
* FrequencyBodyGyroscopeMeanFrequencyX"
* FrequencyBodyGyroscopeMeanFrequencyY"
* FrequencyBodyGyroscopeMeanFrequencyZ"
* FrequencyBodyAccelerometerMagnitudeMean"
* FrequencyBodyAccelerometerMagnitudeStd"
* FrequencyBodyAccelerometerMagnitudeMeanFrequency"
* FrequencyBodyAccelerometerJerkMagnitudeMean"
* FrequencyBodyAccelerometerJerkMagnitudeStd"
* FrequencyBodyAccelerometerJerkMagnitudeMeanFrequency"
* FrequencyBodyGyroscopeMagnitudeMean"
* FrequencyBodyGyroscopeMagnitudeStd"
* FrequencyBodyGyroscopeMagnitudeMeanFrequency"
* FrequencyBodyGyroscopeJerkMagnitudeMean"
* FrequencyBodyGyroscopeJerkMagnitudeStd"
* FrequencyBodyGyroscopeJerkMagnitudeMeanFrequency"
