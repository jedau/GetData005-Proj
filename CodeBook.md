#CodeBook - UCI HAR Dataset

*(Based on the codebook supplied in the previous quizzes of the course)*

	Legend:
	VARIABLE_NAME	DATA_TYPE(MAX_LENGTH)
		Brief Description
					Set of Values
	
	VARIABLE_NAME Naming Convention:
		<time/freq>.<signal used>.<Mean/Std>.<(optional) axis>
					
	Examples of DATA_TYPE include INT (integer), CHAR (character), NUM (numeric), etc.
	
	Because of the requirements of the project, all values are the averages of their
	respective measurements.


	subjectId	INT(2)
		Subject ID. Unique identifier assigned to the volunteers.
				1..30
	
	activity	CHAR(18)
		Activity Label. Name of the activity performed for a period of time.
				"WALKING"
				"WALKING_UPSTAIRS"
				"WALKING_DOWNSTAIRS"
				"SITTING"
				"STANDING"
				"LAYING"
	
	time.BodyAcc.Mean.X		NUM(9)
		Average Mean of the time measured for signals Body and Accelerometer (X-axis)
				-0.999999999..0.999999999
	
	time.BodyAcc.Mean.Y		NUM(9)
		Average Mean of the time measured for signals Body and Accelerometer (Y-axis)
				-0.999999999..0.999999999
				
	time.BodyAcc.Mean.Z		NUM(9)
		Average Mean of the time measured for signals Body and Accelerometer (Z-axis)
				-0.999999999..0.999999999
	
	time.BodyAcc.Std.X		NUM(9)
		Average Standard Deviation of the time measured for signals Body and Accelerometer (X-axis)
				-0.999999999..0.999999999
	
	time.BodyAcc.Std.Y		NUM(9)
		Average Standard Deviation of the time measured for signals Body and Accelerometer (Y-axis)
				-0.999999999..0.999999999
	
	time.BodyAcc.Std.Z		NUM(9)
		Average Standard Deviation of the time measured for signals Body and Accelerometer (Z-axis)
				-0.999999999..0.999999999
				
	time.GravityAcc.Mean.X		NUM(9)
		Average Mean of the time measured for signals Gravity and Accelerometer (X-axis)
				-0.999999999..0.999999999
	
	time.GravityAcc.Mean.Y		NUM(9)
		Average Mean of the time measured for signals Gravity and Accelerometer (Y-axis)
				-0.999999999..0.999999999
				
	time.GravityAcc.Mean.Z		NUM(9)
		Average Mean of the time measured for signals Gravity and Accelerometer (Z-axis)
				-0.999999999..0.999999999
	
	time.GravityAcc.Std.X		NUM(9)
		Average Standard Deviation of the time measured for signals Gravity and Accelerometer (X-axis)
				-0.999999999..0.999999999
				
	time.GravityAcc.Std.Y		NUM(9)
		Average Standard Deviation of the time measured for signals Gravity and Accelerometer (Y-axis)
				-0.999999999..0.999999999
	
	time.GravityAcc.Std.Z		NUM(9)
		Average Standard Deviation of the time measured for signals Gravity and Accelerometer (Z-axis)
				-0.999999999..0.999999999
				
	time.BodyAccJerk.Mean.X		NUM(9)
		Average Mean of the time measured for signals Body, Accelerometer and Jerk (X-axis)
				-0.999999999..0.999999999
	
	time.BodyAccJerk.Mean.Y		NUM(9)
		Average Mean of the time measured for signals Body, Accelerometer and Jerk (Y-axis)
				-0.999999999..0.999999999
				
	time.BodyAccJerk.Mean.Z		NUM(9)
		Average Mean of the time measured for signals Body, Accelerometer and Jerk (Z-axis)
				-0.999999999..0.999999999
	
	time.BodyAccJerk.Std.X		NUM(9)
		Average Standard Deviation of the time measured for signals Body, Accelerometer and Jerk (X-axis)
				-0.999999999..0.999999999
				
	time.BodyAccJerk.Std.Y		NUM(9)
		Average Standard Deviation of the time measured for signals Body, Accelerometer and Jerk (Y-axis)
				-0.999999999..0.999999999
	
	time.BodyAccJerk.Std.Z		NUM(9)
		Average Standard Deviation of the time measured for signals Body, Accelerometer and Jerk (Z-axis)
				-0.999999999..0.999999999
				
	time.BodyGyro.Mean.X		NUM(9)
		Average Mean of the time measured for signals Body and Gyroscope (X-axis)
				-0.999999999..0.999999999
	
	time.BodyGyro.Mean.Y	NUM(9)
		Average Mean of the time measured for signals Body and Gyroscope (Y-axis)
				-0.999999999..0.999999999
				
	time.BodyGyro.Mean.Z		NUM(9)
		Average Mean of the time measured for signals Body and Gyroscope (Z-axis)
				-0.999999999..0.999999999
	
	time.BodyGyro.Std.X		NUM(9)
		Average Standard Deviation of the time measured for signals Body and Gyroscope (X-axis)
				-0.999999999..0.999999999
				
	time.BodyGyro.Std.Y		NUM(9)
		Average Standard Deviation of the time measured for signals Body and Gyroscope (Y-axis)
				-0.999999999..0.999999999
	
	time.BodyGyro.Std.Z		NUM(9)
		Average Standard Deviation of the time measured for signals Body and Gyroscope (Z-axis)
				-0.999999999..0.999999999
				
	time.BodyGyroJerk.Mean.X		NUM(9)
		Average Mean of the time measured for signals Body, Gyroscope and Jerk (X-axis)
				-0.999999999..0.999999999
	
	time.BodyGyroJerk.Mean.Y		NUM(9)
		Average Mean of the time measured for signals Body, Gyroscope and Jerk (Y-axis)
				-0.999999999..0.999999999
				
	time.BodyGyroJerk.Mean.Z		NUM(9)
		Average Mean of the time measured for signals Body, Gyroscope and Jerk (Z-axis)
				-0.999999999..0.999999999
	
	time.BodyGyroJerk.Std.X		NUM(9)
		Average Standard Deviation of the time measured for signals Body, Gyroscope and Jerk (X-axis)
				-0.999999999..0.999999999
				
	time.BodyGyroJerk.Std.Y		NUM(9)
		Average Standard Deviation of the time measured for signals Body, Gyroscope and Jerk (Y-axis)
				-0.999999999..0.999999999
	
	time.BodyGyroJerk.Std.Z		NUM(9)
		Average Standard Deviation of the time measured for signals Body, Gyroscope and Jerk (Z-axis)
				-0.999999999..0.999999999
				
	time.BodyAccMag.Mean		NUM(9)
		Average Mean of the time measured for signals Body, Accelerometer and Magnitude
				-0.999999999..0.999999999
	
	time.BodyAccMag.Std		NUM(9)
		Average Standard Deviation of the time measured for signals Body, Accelerometer and Magnitude
				-0.999999999..0.999999999
	
	time.GravityAccMag.Mean		NUM(9)
		Average Mean of the time measured for signals Gravity, Accelerometer and Magnitude
				-0.999999999..0.999999999
	
	time.GravityAccMag.Std		NUM(9)
		Average Standard Deviation of the time measured for signals Gravity, Accelerometer and Magnitude
				-0.999999999..0.999999999
				
	time.BodyAccJerkMag.Mean		NUM(9)
		Average Mean of the time measured for signals Body, Accelerometer, Jerk and Magnitude
				-0.999999999..0.999999999
				
	time.BodyAccJerkMag.Std		NUM(9)
		Average Standard Deviation of the time measured for signals Body, Accelerometer, Jerk and Magnitude
				-0.999999999..0.999999999
	
	time.BodyGyroMag.Mean		NUM(9)
		Average Mean of the time measured for signals Body, Gyroscope and Magnitude
				-0.999999999..0.999999999
				
	time.BodyGyroMag.Std		NUM(9)
		Average Standard Deviation of the time measured for signals Body, Gyroscope and Magnitude
				-0.999999999..0.999999999
	
	time.BodyGyroJerkMag.Mean		NUM(9)
		Average Mean of the time measured for signals Body, Gyroscope, Accelerometer, Jerk and Magnitude
				-0.999999999..0.999999999
				
	time.BodyGyroJerkMag.Std		NUM(9)
		Average Standard Deviation of the time measured for signals Body, Gyroscope, Accelerometer, Jerk and Magnitude
				-0.999999999..0.999999999
				
	freq.BodyAcc.Mean.X		NUM(9)
		Average Mean of the frequency measured for signals Body and Accelerometer (X-axis)
				-0.999999999..0.999999999
	
	freq.BodyAcc.Mean.Y		NUM(9)
		Average Mean of the frequency measured for signals Body and Accelerometer (Y-axis)
				-0.999999999..0.999999999
				
	freq.BodyAcc.Mean.Z		NUM(9)
		Average Mean of the frequency measured for signals Body and Accelerometer (Z-axis)
				-0.999999999..0.999999999
	
	freq.BodyAcc.Std.X		NUM(9)
		Average Standard Deviation of the frequency measured for signals Body and Accelerometer (X-axis)
				-0.999999999..0.999999999
	
	freq.BodyAcc.Std.Y		NUM(9)
		Average Standard Deviation of the frequency measured for signals Body and Accelerometer (Y-axis)
				-0.999999999..0.999999999
	
	freq.BodyAcc.Std.Z		NUM(9)
		Average Standard Deviation of the frequency measured for signals Body and Accelerometer (Z-axis)
				-0.999999999..0.999999999
	
	freq.BodyAccJerk.Mean.X		NUM(9)
		Average Mean of the frequency measured for signals Body, Accelerometer and Jerk (X-axis)
				-0.999999999..0.999999999
	
	freq.BodyAccJerk.Mean.Y		NUM(9)
		Average Mean of the frequency measured for signals Body, Accelerometer and Jerk (Y-axis)
				-0.999999999..0.999999999
				
	freq.BodyAccJerk.Mean.Z		NUM(9)
		Average Mean of the frequency measured for signals Body, Accelerometer and Jerk (Z-axis)
				-0.999999999..0.999999999
	
	freq.BodyAccJerk.Std.X		NUM(9)
		Average Standard Deviation of the frequency measured for signals Body, Accelerometer and Jerk (X-axis)
				-0.999999999..0.999999999
				
	freq.BodyAccJerk.Std.Y		NUM(9)
		Average Standard Deviation of the frequency measured for signals Body, Accelerometer and Jerk (Y-axis)
				-0.999999999..0.999999999
	
	freq.BodyAccJerk.Std.Z		NUM(9)
		Average Standard Deviation of the frequency measured for signals Body, Accelerometer and Jerk (Z-axis)
				-0.999999999..0.999999999
				
	freq.BodyGyro.Mean.X		NUM(9)
		Average Mean of the frequency measured for signals Body and Gyroscope (X-axis)
				-0.999999999..0.999999999
	
	freq.BodyGyro.Mean.Y	NUM(9)
		Average Mean of the frequency measured for signals Body and Gyroscope (Y-axis)
				-0.999999999..0.999999999
				
	freq.BodyGyro.Mean.Z		NUM(9)
		Average Mean of the frequency measured for signals Body and Gyroscope (Z-axis)
				-0.999999999..0.999999999
	
	freq.BodyGyro.Std.X		NUM(9)
		Average Standard Deviation of the frequency measured for signals Body and Gyroscope (X-axis)
				-0.999999999..0.999999999
				
	freq.BodyGyro.Std.Y		NUM(9)
		Average Standard Deviation of the frequency measured for signals Body and Gyroscope (Y-axis)
				-0.999999999..0.999999999
	
	freq.BodyGyro.Std.Z		NUM(9)
		Average Standard Deviation of the frequency measured for signals Body and Gyroscope (Z-axis)
				-0.999999999..0.999999999

	freq.BodyAccMag.Mean		NUM(9)
		Average Mean of the frequency measured for signals Body, Accelerometer and Magnitude
				-0.999999999..0.999999999
	
	freq.BodyAccMag.Std		NUM(9)
		Average Standard Deviation of the frequency measured for signals Body, Accelerometer and Magnitude
				-0.999999999..0.999999999
	
	freq.BodyBodyAccJerkMag.Mean		NUM(9)
		Average Mean of the frequency measured for signals Body, Body, Accelerometer, Jerk and Magnitude
				-0.999999999..0.999999999
	
	freq.BodyBodyAccJerkMag.Std		NUM(9)
		Average Standard Deviation of the frequency measured for signals Body, Body, Accelerometer, Jerk and Magnitude
				-0.999999999..0.999999999
	
	freq.BodyBodyGyroMag.Mean		NUM(9)
		Average Mean of the frequency measured for signals Body, Body, Gyroscope and Magnitude
				-0.999999999..0.999999999
	
	freq.BodyBodyGyroMag.Std		NUM(9)
		Average Standard Deviation of the frequency measured for signals Body, Body, Gyroscope and Magnitude
				-0.999999999..0.999999999
				
	freq.BodyBodyGyroJerkMag.Mean		NUM(9)
		Average Mean of the frequency measured for signals Body, Body, Gyroscope, Jerk and Magnitude
				-0.999999999..0.999999999
	
	freq.BodyBodyGyroJerkMag.Std		NUM(9)
		Average Standard Deviation of the frequency measured for signals Body, Body, Gyroscope, Jerk and Magnitude
				-0.999999999..0.999999999
