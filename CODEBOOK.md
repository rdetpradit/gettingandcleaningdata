Code Book for Getting and Cleaning Data Project*
================================================

Column        Column             Description                                      Units
Number        Name
------        ------             -----------                                      -----
  1         "Subject"                                       
                              Subject id number. (1-30)                           Integer

  2  		"Activity"                                      
                              Activity Identifier Levels:                         Integer
			         1 WALKING
				 2 WALKING_UPSTAIRS
				 3 WALKING_DOWNSTAIRS
				 4 SITTING 
				 5 STANDING 
				 6 LAYING


  3         "BodyAccelerationMagnitudeMean"                                             
                              Mean of the body acceleration magnitude             Standard 
                              from the smartphone accelerometer.                  Gravity
                                                                                  Units 'g'
                                                                           
  4         "GravityAccelerationMagnitudeMean"                                          
                              Mean of the gravity acceleration magnitude          g
                              from the smartphone accelerometer.                         
                                                                                        
  5         "BodyAccelerationJerkMagnitudeMean"                                            
                              Mean of the body acceleration jerk                  g/Second
                              magnitude from the smartphone accelerometer.                
                                                                                        
  6         "BodyGyroscopeMagnitudeMean"                                                
                              Mean of the body angular velocity magnitude         Radians/Second
                              from the smartphone gyroscope.                            
                                                                                        
  7         "BodyGyroscopeJerkMagnitudeMean"                                            
                              Mean of the body angular velocity jerk              Radians/Second^2
                              magnitude from the smartphone gyroscope.                    
                                                                                        
  8         "BodyAccelerationMagnitudeFFTMean"                                    g-Second
                              Mean of the body acceleration magnitude Fourier 
                              transform from the smartphone accelerometer.

  9         "BodyAccelerationJerkMagnitudeFFTMean"                                g
                              Mean of the body acceleration jerk magnitude  
                              Fourier transform from the smartphone 
                              accelerometer.

 10         "BodyGyroscopeMagnitudeFFTMean"                                       Radians
                              Mean of the body angular velocity magnitude
                              Fourier transform from the smartphone gyroscope.

 11         "BodyGyroscopeJerkMagnitudeFFTMean"                                   Radians/Second
                              Mean of the body angular velocity jerk   
                              magnitude Fourier transform from the smartphone
                              gyroscope.
     
 12         "BodyAccelerationMagnitudeStd"                                        g
                              Standard deviation of the body acceleration      
                              magnitude from the smartphone accelerometer.          

 13         "GravityAccelerationMagnitudeStd"                                     g
                              Standard deviation of the gravity acceleration   
                              magnitude from the smartphone accelerometer.            

 14         "BodyAccelerationJerkMagnitudeStd"                                    g/Second
                              Standard deviation of the body acceleration jerk 
                              magnitude from the smartphone accelerometer.

 15         "BodyGyroscopeMagnitudeStd"                                           Radians/Second
                              Standard deviation of the body angular velocity  
                              magnitude from the smartphone gyroscope.

 16         "BodyGyroscopeJerkMagnitudeStd"                                       Radians/Second^2
                              Standard deviation of the body angular velocity   
                              jerk magnitude from the smartphone gyroscope.

 17         "BodyAccelerationMagnitudeFFTStd"                                     g-Second
                             Standard deviation of the body acceleration   
                             magnitude Fourier transform from the smartphone 
                             accelerometer.

 18         "BodyAccelerationJerkMagnitudeFFTStd"                                 g
                             Standard deviation of the body acceleration jerk 
                             magnitude Fourier transform from the smartphone
                             accelerometer.

 19         "BodyGyroscopeMagnitudeFFTStd"                                        Radians
                             Standard deviation of the body angular velocity 
                             magnitude Fourier transform from the smartphone
                             gyroscope.

 20         "BodyGyroscopeJerkMagnitudeFFTStd"                                    Radians/Second
                             Standard deviation of the body angular velocity  
                             jerk magnitude Fourier transform from the 
                             smartphone gyroscope.

 
 * Each row contains the mean of the individual measurements grouped by Subject
and Activity. Only variables for the Euclidian magnitude of the three-dimensional
signals are included. An alternative would be to include the component variables
as well. The procedure for doing this is explained in the run_analysis.R comments.

 Additional notes:
 1. The jerk differential units aren't given. Since everything else was in seconds,
    I'm assuming jerk has units of g/sec.
 
 2. Fourier transforms have the same units as the original data with seconds appended.


 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
