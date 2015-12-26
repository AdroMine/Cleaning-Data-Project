## Codebook for "Human Activity Recognition Using Smartphones" Dataset

The experiments were carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. The embedded accelerometer and gyroscope of the smartphone were used to capture the 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz.   

The original dataset can be obtained [here](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip).  
  
The original dataset's two separate sets for training and test were combined into a single set, and the information regarding the subject undergoing the experiment and the activity being performed by the subject were merged into the same data set, making it a complete dataset.   

Out of the 561 original time and frequency domain variables, only 86 were selected that gave the mean value of the different signals captured or their standard deviation.  

The signals captured included :
- the Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 

The dataset now contains 88 variables, 86 of which were selected from these, one for identifying the subject and one as an activity label. For the 86 selected variables, their original names were continued, since they were good enough, simple and self-explanatory once you got a hang of the dataset, and since changing names could confusion for the creators and other users of the dataset who must have grown familiar with the given names.


The detailed names, type and description of the variables in the dateset follows.  
<br>
## Variables  


#### **SUBJECT** (Numeric) - 
> The ID of the subject undertaking the experiment. Ranges from 1 - 30.

#### **ACTIVITY** (FACTOR) - 
> The Activity being performed as part of the experiment. It has 6 levels.
> > 1 WALKING  
> > 2 WALKING_UPSTAIRS  
> > 3 WALKING_DOWNSTAIRS  
> > 4 SITTING  
> > 5 STANDING   
> > 6 LAYING     

<br><br>  
#### *The following are all numeric variables normalized and bounded within [-1,1].*  
   
#### **tBodyAcc_(mean|std)_(X|Y|Z)**  
> Mean and Standard Deviation of body acceleration signal along the specified axis.  

#### **tGravityAcc_(mean|std)_(X|Y|Z)**
> Mean and Standard deviation of gravity acceleration signal along the specified axis.  

#### **tBodyAccJerk_(mean|std)_(X|Y|Z)**  
> Mean and Standard deviation of body jerk signals along the 3 axis.  

#### **tBodyGyro_(mean|std)_(X|Y|Z)**   
> Mean and Standard deviation of body gyroscope signals along the 3 axis.  

#### **tBodyGyroJerk_(mean|std)_(X|Y|Z)**  
> Mean and Standard deviation of body gyroscope jerk signals along the 3 axis.  

#### **tBodyAccMag_(mean|std)**  
> Mean and Standard deviation of the magnitude of the three dimensional signal of  body acceleration.  

#### **tGravityAccMag_(mean|std)**  
> Mean and Standard deviation of the magnitude of the three dimensional signal of  gravity acceleration.  

#### **tBodyAccJerkMag_(mean|std)**  
> Mean and Standard deviation of the magnitude of the three dimensional signal of  body jerk.  

#### **tBodyGyroMag_(mean|std)**  
> Mean and Standard deviation of the magnitude of the three dimensional signal of  body gyroscope. 

#### **tBodyGyroJerkMag_(mean|std)**   
> Mean and Standard deviation of the magnitude of the three dimensional signal of  body gyroscope jerk.  

#### **fBodyAcc_(mean|std)_(X|Y|Z)**  
> Fast Fourier Transform (FFT) applied to tBodyAcc.  

#### **fBodyAcc_meanFreq_(X|Y|Z)**  
> Weighted average of the frequency components to obtain a mean frequency for body acceleration along the three axis.  

#### **fBodyAccJerk_(mean|std)_(X|Y|Z)**  
> FFF applied to consequent variable.  

#### **fBodyAccJerk_meanFreq_(X|Y|Z)**  
> Weighted average of the frequency components to obtain a mean frequency for body jerk along the three axis.  

#### **fBodyGyro_(mean|std)_(X|Y|Z)**  
> FFF applied to consequent variable.  

#### **fBodyGyro_meanFreq_(X|Y|Z)**  
> Weighted average of the frequency components to obtain a mean frequency for body gyroscope signal along the three axis.  

#### **fBodyAccMag_(mean|std)**  
> FFF applied to consequent variable.  

#### **fBodyAccMag_meanFreq**  
> Weighted average of the frequency components to obtain a mean frequency for magnitude of body acceleration.  

#### **fBodyBodyAccJerkMag_(mean|std)**  
> FFF applied to consequent variable.  

#### **fBodyBodyAccJerkMag_meanFreq**  
> Weighted average of the frequency components to obtain a mean frequency for magnitude of body jerk.  

#### **fBodyBodyGyroMag_(mean|std)**  
> FFF applied to consequent variable.  

#### **fBodyBodyGyroMag_meanFreq**  
> Weighted average of the frequency components to obtain a mean frequency for magnitude of gyroscope signal.  

#### **fBodyBodyGyroJerkMag_(mean|std)**  
> FFF applied to consequent variable.  

#### **fBodyBodyGyroJerkMag_meanFreq**  
> Weighted average of the frequency components to obtain a mean frequency for magnitude of gyroscope jerk signal.  

#### **angle_tBodyAccMean_gravity**  
> Angle between mean of body acceleration signal and gravity signal.

#### **angle_tBodyAccJerkMean_gravityMean**
> Angle between mean of body jerk signal and mean of gravity signal.

#### **angle_tBodyGyroMean_gravityMean**  
> Angle between mean of body gyroscope signal and mean of gravity signal.

#### **angle_tBodyGyroJerkMean_gravityMean**  
> Angle between mean of body gyroscopic jerk and mean of gravity signals.

#### **angle_(X|Y|Z)_gravityMean**  
> Angle of mean of gravity signal.  