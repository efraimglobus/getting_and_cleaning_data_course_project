Codebook for wearable computing dataset
==================================

## Variables
[1] "subject"                  "activityName"             "activityNum"             
 [4] "tbodyaccmeanx"            "tbodyaccmeany"            "tbodyaccmeanz"           
 [7] "tbodyaccstdx"             "tbodyaccstdy"             "tbodyaccstdz"            
[10] "tgravityaccmeanx"         "tgravityaccmeany"         "tgravityaccmeanz"        
[13] "tgravityaccstdx"          "tgravityaccstdy"          "tgravityaccstdz"         
[16] "tbodyaccjerkmeanx"        "tbodyaccjerkmeany"        "tbodyaccjerkmeanz"       
[19] "tbodyaccjerkstdx"         "tbodyaccjerkstdy"         "tbodyaccjerkstdz"        
[22] "tbodygyromeanx"           "tbodygyromeany"           "tbodygyromeanz"          
[25] "tbodygyrostdx"            "tbodygyrostdy"            "tbodygyrostdz"           
[28] "tbodygyrojerkmeanx"       "tbodygyrojerkmeany"       "tbodygyrojerkmeanz"      
[31] "tbodygyrojerkstdx"        "tbodygyrojerkstdy"        "tbodygyrojerkstdz"       
[34] "tbodyaccmagmean"          "tbodyaccmagstd"           "tgravityaccmagmean"      
[37] "tgravityaccmagstd"        "tbodyaccjerkmagmean"      "tbodyaccjerkmagstd"      
[40] "tbodygyromagmean"         "tbodygyromagstd"          "tbodygyrojerkmagmean"    
[43] "tbodygyrojerkmagstd"      "fbodyaccmeanx"            "fbodyaccmeany"           
[46] "fbodyaccmeanz"            "fbodyaccstdx"             "fbodyaccstdy"            
[49] "fbodyaccstdz"             "fbodyaccjerkmeanx"        "fbodyaccjerkmeany"       
[52] "fbodyaccjerkmeanz"        "fbodyaccjerkstdx"         "fbodyaccjerkstdy"        
[55] "fbodyaccjerkstdz"         "fbodygyromeanx"           "fbodygyromeany"          
[58] "fbodygyromeanz"           "fbodygyrostdx"            "fbodygyrostdy"           
[61] "fbodygyrostdz"            "fbodyaccmagmean"          "fbodyaccmagstd"          
[64] "fbodybodyaccjerkmagmean"  "fbodybodyaccjerkmagstd"   "fbodybodygyromagmean"    
[67] "fbodybodygyromagstd"      "fbodybodygyrojerkmagmean" "fbodybodygyrojerkmagstd"

````

## Data

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.



## Transformation

All the values are means, aggregated over 30 subjects and 6 activities, hence the resulting dataset is 180 rows by 68 columns.