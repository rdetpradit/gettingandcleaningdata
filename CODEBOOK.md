#Code Book for Getting and Cleaning Data Project
===============================================

Code Book
---------
   This file explains all the column variables included in the tidy.txt file including their units.

Details and Notes
-----------------
   Each row contains the mean of the individual measurements grouped by Subject and Activity.
Only variables for the Euclidian magnitude of the three-dimensional signals are included.
An alternative would be to include the component variables as well. The procedure for doing
this is explained in the run_analysis.R comments.

   The jerk differential units aren't given. Since everything else was in seconds, I'm assuming
jerk has units of g/sec.

   Fourier transforms have the same units as the original data with seconds appended.


| Number   |  Name                                | Description                                                                                                        | Units                       |
|----------|:-------------------------------------|:---------------------------------------------                                                                      |:----------                  |
|     1    | Subject                              | Subject id number. (1-30)                                                                                          | Integer                     | 
|          |                                      |                                                                                                                    |                             | 
|     2    | Activity                             | Activity Identifier Levels:                                                                                        | Integer                     | 
|          |                                      |    1 WALKING                                                                                                       |                             | 
|          |                                      |    2 WALKING_UPSTAIRS                                                                                              |                             | 
|          |                                      |    3 WALKING_DOWNSTAIRS                                                                                            |                             | 
|          |                                      |    4 SITTING                                                                                                       |                             | 
|          |                                      |    5 STANDING                                                                                                      |                             | 
|          |                                      |    6 LAYING                                                                                                        |                             | 
|          |                                      |                                                                                                                    |                             | 
|     3    | BodyAccelerationMagnitudeMean        | Mean of the body acceleration magnitude from the smartphone accelerometer.                                         | Standard Gravity Units 'g'  | 
|          |                                      |                                                                                                                    |                             | 
|     4    | GravityAccelerationMagnitudeMean     | Mean of the gravity acceleration magnitude from the smartphone accelerometer.                                      | g                           | 
|          |                                      |                                                                                                                    |                             | 
|     5    | BodyAccelerationJerkMagnitudeMean    | Mean of the body acceleration jerk magnitude from the smartphone accelerometer.                                    | g/Second                    | 
|          |                                      |                                                                                                                    |                             | 
|     6    | BodyGyroscopeMagnitudeMean           | Mean of the body angular velocity magnitude from the smartphone gyroscope.                                         | Radians/Second              | 
|          |                                      |                                                                                                                    |                             | 
|     7    | BodyGyroscopeJerkMagnitudeMean       | Mean of the body angular velocity jerk magnitude from the smartphone gyroscope.                                    | Radians/Second^2            | 
|          |                                      |                                                                                                                    |                             | 
|     8    | BodyAccelerationMagnitudeFFTMean     | Mean of the body acceleration magnitude Fourier transform from the smartphone accelerometer.                       | g-Second                    | 
|          |                                      |                                                                                                                    |                             | 
|     9    | BodyAccelerationJerkMagnitudeFFTMean | Mean of the body acceleration jerk magnitude Fourier transform from the smartphone accelerometer.                  | g                           | 
|          |                                      |                                                                                                                    |                             | 
|    10    | BodyGyroscopeMagnitudeFFTMean        | Mean of the body angular velocity magnitude Fourier transform from the smartphone gyroscope.                       | Radians                     | 
|          |                                      |                                                                                                                    |                             | 
|    11    | BodyGyroscopeJerkMagnitudeFFTMean    | Mean of the body angular velocity jerk magnitude Fourier transform from the smartphone gyroscope.                  | Radians/Second              |
|          |                                      |                                                                                                                    |                             | 
|    12    | BodyAccelerationMagnitudeStd         | Standard deviation of the body acceleration magnitude from the smartphone accelerometer.                           | g                           | 
|          |                                      |                                                                                                                    |                             | 
|    13    | GravityAccelerationMagnitudeStd      | Standard deviation of the gravity acceleration magnitude from the smartphone accelerometer.                        | g                           | 
|          |                                      |                                                                                                                    |                             | 
|    14    | BodyAccelerationJerkMagnitudeStd     | Standard deviation of the body acceleration jerk magnitude from the smartphone accelerometer.                      | g/Second                    | 
|          |                                      |                                                                                                                    |                             | 
|    15    | BodyGyroscopeMagnitudeStd            | Standard deviation of the body angular velocity magnitude from the smartphone gyroscope.                           | Radians/Second              | 
|          |                                      |                                                                                                                    |                             | 
|    16    | BodyGyroscopeJerkMagnitudeStd        | Standard deviation of the body angular velocity jerk magnitude from the smartphone gyroscope.                      | Radians/Second^2            | 
|          |                                      |                                                                                                                    |                             | 
|    17    | BodyAccelerationMagnitudeFFTStd      | Standard deviation of the body acceleration magnitude Fourier transform from the smartphone accelerometer.         | g-Second                    | 
|          |                                      |                                                                                                                    |                             | 
|    18    | BodyAccelerationJerkMagnitudeFFTStd  | Standard deviation of the body acceleration jerk magnitude Fourier transform from the smartphone accelerometer.    | g                           | 
|          |                                      |                                                                                                                    |                             | 
|    19    | BodyGyroscopeMagnitudeFFTStd         | Standard deviation of the body angular velocity magnitude Fourier transform from the smartphone gyroscope.         | Radians                     | 
|          |                                      |                                                                                                                    |                             | 
|    20    | BodyGyroscopeJerkMagnitudeFFTStd     | Standard deviation of the body angular velocity jerk magnitude Fourier transform from the smartphone gyroscope.    | Radians/Second              | 
