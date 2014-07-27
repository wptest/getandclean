CODEBOOK.md
========================================================

The codebook describes the varabiles used from:
* the output data in the tidy_data.txt
* the raw data [Human Activity Recognition Using Smartphone - UCI](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

**tidy_data.txt**


Subject - subject id from the study
Activity - activity recorded from raw data (Source: activity_labels.txt file)
* 1 - walking
* 2 - walking upstairs
* 3 - walking downstairs
* 4 - sitting
* 5 - standing
* 6 - laying

**Terms:**
(See feature_info.txt from source data files for full study descriptions.)
* TimeOfBodyAcceleration = body data from accelerometer
* TimeOfBodyGyroscope = body data from gyroscope
* TimeOfGravityAcceleration = gravity data from accelerometer 
* TimeOfGravityGyroscope = gravity data from gyroscope 

Jerk = Body linear acceleration and angular velocity were derived in time to obtain Jerk signals (TimeOfBodyAccelerationJerkMean and TimeBodyGyroscopeJerkMean). 
 
Magnitude = Magnitude of these three-dimensional signals were calculated using the Euclidean norm for 
* TimeofBodyAccerlation
* TimeofGravityAccelleration
* TimeofBodyAccellerationJerk
* TimeofBodyGyroscope
* TimeofBodyGyroscopeJerk 

Frequency = Fast Fourier Transform (FFT) was applied to these signals producing:
* FrequencyOfBodyAcceleration
* FrequencyOfBodyAccelerationJerk-XYZ
* FrequencyOfBodyGyroscope-XYZ
* FrequencyOfBodyAccelerationJerkMagnitude
* FrequencyOfBodyGyroscopeMagnitude
* FrequencyOfBodyGyroscopeJerkMagitude. 
  
* -X = 3-axial signal in X direction
* -Y = 3-axial signal in Y direction
* -Z = 3-axial signal in Z direction

* mean = mean value
* std = standard deviation

**List of Activity Data Variables**
* TimeOfBodyAccelerationMean-X
* TimeOfBodyAccelerationMean-Y
* TimeOfBodyAccelerationMean-Z
* TimeOfBodyAccelerationSTD-X
* TimeOfBodyAccelerationSTD-Y
* TimeOfBodyAccelerationSTD-Z
* TimeOfGravityAccelerationSTD-X
* TimeOfGravityAccelerationSTD-Y
* TimeOfGravityAccelerationSTD-Z
* TimeOfBodyAccelerationJerkMean-X
* TimeOfBodyAccelerationJerkMean-Y
* * TimeOfBodyAccelerationJerkMean-Z
* TimeOfBodyAccelerationJerkSTD-X
* TimeOfBodyAccelerationJerkSTD-Y
* TimeOfBodyAccelerationJerkSTD-Z
* TimeOfBodyGyroscopeMean-X
* TimeOfBodyGyroscopeMean-Y
* TimeOfBodyGyroscopeMean-Z
* TimeOfBodyGyroscopeSTD-X
* TimeOfBodyGyroscopeSTD-Y
* TimeOfBodyGyroscopeSTD-Z
* TimeOfBodyGyroscopeJerkMean-X
* TimeOfBodyGyroscopeJerkMean-Y
* TimeOfBodyGyroscopeJerkMean-Z
* TimeOfBodyAccelerationMagnitudeMean
* TimeOfBodyAccelerationMagnitudeSTD
* TimeOfGravityAccelerationMagnitudeMean
* TimeOfGravityAccelerationMagnitudeSTD
* TimeOfBodyAccelerationJerkMagnitudeMean
* TimeOfBodyAccelerationJerkMagnitudeSTD
* FrequencyOfBodyAccelerationMean-X
* FrequencyOfBodyAccelerationMean-Y
* FrequencyOfBodyAccelerationMean-Z
* FrequencyOfBodyAccelerationSTD-X
* FrequencyOfBodyAccelerationSTD-Y
* FrequencyOfBodyAccelerationSTD-Z
* FrequencyOfBodyAccelerationJerkMean-X
* FrequencyOfBodyAccelerationJerkMean-Y
* FrequencyOfBodyAccelerationJerkMean-Z
* FrequencyOfBodyAccelerationJerkSTD-X
* FrequencyOfBodyAccelerationJerkSTD-Y
* FrequencyOfBodyAccelerationJerkSTD-Z
* FrequencyOfBodyGyroscopeMean-X
* FrequencyOfBodyGyroscopeMean-Y
* FrequencyOfBodyGyroscopeMean-Z
* FrequencyOfBodyGyroscopeSTD-X
* FrequencyOfBodyGyroscopeSTD-Y
* FrequencyOfBodyGyroscopeSTD-Z
* FrequencyOfBodyAccelerationMagnitudeMean
* FrequencyOfBodyAccelerationMagnitudeSTD
* FrequencyOfBodyBodyAccelerationJerkMagnitudeMean
* FrequencyOfBodyBodyAccelerationJerkMagnitudeSTD
* FrequencyOfBodyBodyGyroscopeMagnitudeMean
* FrequencyOfBodyBodyGyroscopeMagnitudeSTD
* FrequencyOfBodyBodyGyroscopeJerkMagnitudeMean
* FrequencyOfBodyBodyGyroscopeJerkMagnitudeSTD
* AngleOfTimeOfFrequencyOfBodyAccelerationJerkMeanGravityMean
* AngleOfTimeOfFrequencyOfBodyGyroscopeMeanGravityMean
* AngleOfTimeOfFrequencyOfBodyGyroscopeJerkMeanGravityMean
* AngleOfXGravityMean
* AngleOfYGravityMean
* AngleOfZGravityMean

