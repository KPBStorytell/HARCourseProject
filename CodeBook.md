# CodeBook.md

The run-analysis.R script creates two tidy datasets: (1) hardata.csv and (2) haravgdata.csv. These two datasets summarize
data from the Reyes-Ortiz et al. Human Activity Recognition Recognition Using Smartphones Dataset Version 1.0. This codebook file
provides key background and metadata information.

# Study Design
Reyes-Ortiz et al. assembled their human activity recognition (har) database from sensor recordings of 30 human subjects performing activities of daily living. The subjects who 
ranged in age from 19 to 48 years carried a waist-mounted Samsung Galaxy S II smartphone with embedded inertial sensors while performing six activities 
(walking, walking upstairs, walking downstairs, sitting, standing, and laying). The researchers captured 3-axial linear acceleration and 3-axial 
angular velocity readings from acclerometer and gyroscope embedded sensors. By processing the raw sensor data, the researchers generated
numerous features describing the subjects' (human) activity. These included time and frequency domain measures and the separation of acceleration
signals into body motion and gravitational components. 3-axial signals capture movement in X, Y, and Z directions. 

Details about the original study and dataset (Human Activity Recognition Human Activity Recognition Using Smartphones Dataset
Version 1.0 (Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto) are provided in the readme and features_info files downloaded
with the original data and at:
https://archive.ics.uci.edu/ml/datasets/human+activity+recognition+using+smartphones

# Two Tidy Datasets
The tidy datasets created by the run-analysis.R script present these researchers' data in an accessible and organized manner. Consistent with tidy data principles,
the columns of the dataset contain one variable, the rows of the dataset contain one observation, unique identifiers are maintained, descriptive variable names are employed, and
distinct variables are stored in distinct tables.

1. hardata.csv (a subset of the original data recast using a tidy-data format)
2. haravgdata.csv (new data describing the average(mean) values of the measures summarized in hardata by subject and by activity)

# Codebook
## hardata.csv tidy dataset
#### number of observations = 10,299
#### number of variables = 69

Each row of the dataset corresponds with a single set of measures collected by one subject performing one activity (in a fixed 
time window). 
Each column of the dataset contains a single variable. The dataset includes 66 variables describing 33 measures(mean and standard 
deviation) from the original dataset and 3 variables noting the subject and activity (numeric and character) associated with the measure. This dataset includes both the test and training data observations. The focal measures were selected following the guidance of the course project assignment (i.e., only measures with mean and standard deviation values).

Variables distinguish time and frequency domain measures, body and gravitational acceleration components, jerk signals, mean or standard
deviation measures, and information captured by 3-axial (X,Y, and Z directions) sensor signals. All measures have been standardized to ranges from -1 to 1.

|variable name         |	type	|	range	  |	description	                                   |	Reyes-Ortiz et al. variable name
|----------------------|--------|---------|------------------------------------------------|--------------------------------------------|
subjectid	|	integer	|	[1 - 30]	|	unique subject identifier	|	
timebodyaccelmeanx	|	numeric	|	[-1 - 1]	|	time domain body acceleration - mean - x signal	|	1 tBodyAcc-mean()-X
timebodyaccelmeany	|	numeric	|	[-1 - 1]	|	time domain body acceleration - mean - y signal	|	2 tBodyAcc-mean()-Y
timebodyaccelmeanz	|	numeric	|	[-1 - 1]	|	time domain body acceleration - mean - z signal	|	3 tBodyAcc-mean()-Z
timebodyaccelstdx	|	numeric	|	[-1 - 1]	|	time domain body acceleration - standard deviation - x signal	|	4 tBodyAcc-std()-X
timebodyaccelstdy	|	numeric	|	[-1 - 1]	|	time domain body acceleration - standard deviation - y signal	|	5 tBodyAcc-std()-Y
timebodyaccelstdz	|	numeric	|	[-1 - 1]	|	time domain body acceleration - standard deviation - z signal	|	6 tBodyAcc-std()-Z
timegravityaccelmeanx	|	numeric	|	[-1 - 1]	|	time domain gravity acceleration - mean - x signal	|	41 tGravityAcc-mean()-X
timegravityaccelmeany	|	numeric	|	[-1 - 1]	|	time domain gravity acceleration - mean - y signal	|	42 tGravityAcc-mean()-Y
timegravityaccelmeanz	|	numeric	|	[-1 - 1]	|	time domain gravity acceleration - mean - z signal	|	43 tGravityAcc-mean()-Z
timegravityaccelstdx	|	numeric	|	[-1 - 1]	|	time domain gravity acceleration - standard deviation - x signal	|	44 tGravityAcc-std()-X
timegravityaccelstdy	|	numeric	|	[-1 - 1]	|	time domain gravity acceleration - standard deviation - y signal	|	45 tGravityAcc-std()-Y
timegravityaccelstdz	|	numeric	|	[-1 - 1]	|	time domain gravity acceleration - standard deviation - z signal	|	46 tGravityAcc-std()-Z
timebodyacceljerkmeanx	|	numeric	|	[-1 - 1]	|	time domain body acceleration jerk - mean - x signal	|	81 tBodyAccJerk-mean()-X
timebodyacceljerkmeany	|	numeric	|	[-1 - 1]	|	time domain body acceleration jerk - mean - y signal	|	82 tBodyAccJerk-mean()-Y
timebodyacceljerkmeanz	|	numeric	|	[-1 - 1]	|	time domain body acceleration jerk - mean - z signal	|	83 tBodyAccJerk-mean()-Z
timebodyacceljerkstdx	|	numeric	|	[-1 - 1]	|	time domain body acceleration jerk - standard deviation - x signal	|	84 tBodyAccJerk-std()-X
timebodyacceljerkstdy	|	numeric	|	[-1 - 1]	|	time domain body acceleration jerk - standard deviation - y signal	|	85 tBodyAccJerk-std()-Y
timebodyacceljerkstdz	|	numeric	|	[-1 - 1]	|	time domain body acceleration jerk - standard deviation - z signal	|	86 tBodyAccJerk-std()-Z
timebodygyromeanx	|	numeric	|	[-1 - 1]	|	time domain body gyroscope - mean - x signal	|	121 tBodyGyro-mean()-X
timebodygyromeany	|	numeric	|	[-1 - 1]	|	time domain body gyroscope - mean - y signal	|	122 tBodyGyro-mean()-Y
timebodygyromeanz	|	numeric	|	[-1 - 1]	|	time domain body gyroscope - mean - z signal	|	123 tBodyGyro-mean()-Z
timebodygyrostdx	|	numeric	|	[-1 - 1]	|	time domain body gyroscope - standard deviation - x signal	|	124 tBodyGyro-std()-X
timebodygyrostdy	|	numeric	|	[-1 - 1]	|	time domain body gyroscope - standard deviation - y signal	|	125 tBodyGyro-std()-Y
timebodygyrostdz	|	numeric	|	[-1 - 1]	|	time domain body gyroscope - standard deviation - z signal	|	126 tBodyGyro-std()-Z
timebodygyrojerkmeanx	|	numeric	|	[-1 - 1]	|	time domain body gyroscope jerk - mean - x signal	|	161 tBodyGyroJerk-mean()-X
timebodygyrojerkmeany	|	numeric	|	[-1 - 1]	|	time domain body gyroscope jerk - mean - y signal	|	162 tBodyGyroJerk-mean()-Y
timebodygyrojerkmeanz	|	numeric	|	[-1 - 1]	|	time domain body gyroscope jerk - mean - z signal	|	163 tBodyGyroJerk-mean()-Z
timebodygyrojerkstdx	|	numeric	|	[-1 - 1]	|	time domain body gyroscope jerk - standard deviation - x signal	|	164 tBodyGyroJerk-std()-X
timebodygyrojerkstdy	|	numeric	|	[-1 - 1]	|	time domain body gyroscope jerk - standard deviation - y signal	|	165 tBodyGyroJerk-std()-Y
timebodygyrojerkstdz	|	numeric	|	[-1 - 1]	|	time domain body gyroscope jerk - standard deviation - z signal	|	166 tBodyGyroJerk-std()-Z
timebodyaccelmagmean	|	numeric	|	[-1 - 1]	|	time domain body acceleration magnitude - mean	|	201 tBodyAccMag-mean()
timebodyaccelmagstd	|	numeric	|	[-1 - 1]	|	time domain body acceleration magnitude - standard deviation	|	202 tBodyAccMag-std()
timegravityaccelmagmean	|	numeric	|	[-1 - 1]	|	time domain gravity acceleration magnitude - mean	|	214 tGravityAccMag-mean()
timegravityaccelmagstd	|	numeric	|	[-1 - 1]	|	time domain gravity acceleration magnitude - standard deviation	|	215 tGravityAccMag-std()
timebodyacceljerkmagmean	|	numeric	|	[-1 - 1]	|	time domain body acceleration jerk magnitude - mean	|	227 tBodyAccJerkMag-mean()
timebodyacceljerkmagstd	|	numeric	|	[-1 - 1]	|	time domain body acceleration jerk magnitude - standard deviation	|	228 tBodyAccJerkMag-std()
timebodygyromagmean	|	numeric	|	[-1 - 1]	|	time domain body gyroscope magnitude - mean	|	240 tBodyGyroMag-mean()
timebodygyromagstd	|	numeric	|	[-1 - 1]	|	time domain body gyroscope magnitude - standard deviation	|	241 tBodyGyroMag-std()
timebodygyrojerkmagmean	|	numeric	|	[-1 - 1]	|	time domain body gyroscope jerk magnitude - mean	|	253 tBodyGyroJerkMag-mean()
timebodygyrojerkmagstd	|	numeric	|	[-1 - 1]	|	time domain body gyroscope jerk magnitude - standard deviation	|	254 tBodyGyroJerkMag-std()
freqbodyaccelmeanx	|	numeric	|	[-1 - 1]	|	freq domain body acceleration - mean - x signal	|	266 fBodyAcc-mean()-X
freqbodyaccelmeany	|	numeric	|	[-1 - 1]	|	freq domain body acceleration - mean - y signal	|	267 fBodyAcc-mean()-Y
freqbodyaccelmeanz	|	numeric	|	[-1 - 1]	|	freq domain body acceleration - mean - z signal	|	268 fBodyAcc-mean()-Z
freqbodyaccelstdx	|	numeric	|	[-1 - 1]	|	freq domain body acceleration - standard deviation - x signal	|	269 fBodyAcc-std()-X
freqbodyaccelstdy	|	numeric	|	[-1 - 1]	|	freq domain body acceleration - standard deviation - y signal	|	270 fBodyAcc-std()-Y
freqbodyaccelstdz	|	numeric	|	[-1 - 1]	|	freq domain body acceleration - standard deviation - z signal	|	271 fBodyAcc-std()-Z
freqbodyacceljerkmeanx	|	numeric	|	[-1 - 1]	|	freq domain body acceleration jerk - mean - x signal	|	345 fBodyAccJerk-mean()-X
freqbodyacceljerkmeany	|	numeric	|	[-1 - 1]	|	freq domain body acceleration jerk - mean - y signal	|	346 fBodyAccJerk-mean()-Y
freqbodyacceljerkmeanz	|	numeric	|	[-1 - 1]	|	freq domain body acceleration jerk - mean - z signal	|	347 fBodyAccJerk-mean()-Z
freqbodyacceljerkstdx	|	numeric	|	[-1 - 1]	|	freq domain body acceleration jerk - standard deviation - x signal	|	348 fBodyAccJerk-std()-X
freqbodyacceljerkstdy	|	numeric	|	[-1 - 1]	|	freq domain body acceleration jerk - standard deviation - y signal	|	349 fBodyAccJerk-std()-Y
freqbodyacceljerkstdz	|	numeric	|	[-1 - 1]	|	freq domain body acceleration jerk - standard deviation - z signal	|	350 fBodyAccJerk-std()-Z
freqbodygyromeanx	|	numeric	|	[-1 - 1]	|	freq domain body gyroscope - mean - x signal	|	424 fBodyGyro-mean()-X
freqbodygyromeany	|	numeric	|	[-1 - 1]	|	freq domain body gyroscope - mean - y signal	|	425 fBodyGyro-mean()-Y
freqbodygyromeanz	|	numeric	|	[-1 - 1]	|	freq domain body gyroscope - mean - z signal	|	426 fBodyGyro-mean()-Z
freqbodygyrostdx	|	numeric	|	[-1 - 1]	|	freq domain body gyroscope - standard deviation - x signal	|	427 fBodyGyro-std()-X
freqbodygyrostdy	|	numeric	|	[-1 - 1]	|	freq domain body gyroscope - standard deviation - y signal	|	428 fBodyGyro-std()-Y
freqbodygyrostdz	|	numeric	|	[-1 - 1]	|	freq domain body gyroscope - standard deviation - z signal	|	429 fBodyGyro-std()-Z
freqbodyaccelmagmean	|	numeric	|	[-1 - 1]	|	freq domain body acceleration magnitude - mean	|	503 fBodyAccMag-mean()
freqbodyaccelmagstd	|	numeric	|	[-1 - 1]	|	freq domain body acceleration magnitude - standard deviation	|	504 fBodyAccMag-std()
freqbodybodyacceljerkmagmean	|	numeric	|	[-1 - 1]	|	freq domain body acceleration jerk magnitude - mean	|	516 fBodyBodyAccJerkMag-mean()
freqbodybodyacceljerkmagstd	|	numeric	|	[-1 - 1]	|	freq domain body acceleration jerk magnitude - standard deviation	|	517 fBodyBodyAccJerkMag-std()
freqbodybodygyromagmean	|	numeric	|	[-1 - 1]	|	freq domain body gyroscope magnitude - mean	|	529 fBodyBodyGyroMag-mean()
freqbodybodygyromagstd	|	numeric	|	[-1 - 1]	|	freq domain body gyroscope magnitude - standard deviation	|	530 fBodyBodyGyroMag-std()
freqbodybodygyrojerkmagmean	|	numeric	|	[-1 - 1]	|	freq domain body gyroscope jerk magnitude - mean	|	542 fBodyBodyGyroJerkMag-mean()
freqbodybodygyrojerkmagstd	|	numeric	|	[-1 - 1]	|	freq domain body gyroscope jerk magnitude - standard deviation	|	543 fBodyBodyGyroJerkMag-std()
activity	|	integer	|	[1 - 6]	|	1 (walking); 2 (walkingupstairs); 3 (walkingdownstairs); 4 (sitting); 5 (standing); 6 (laying)	|	
activitydesc	|	char	|		|	walking; walkingupstairs; walkingdownstairs; sitting; standing; laying	|	

## haravgdata.csv tidy dataset
#### number of observations = 36
#### number of variables = 67

Each row of the dataset corresponds with mean values calculated for a single subject (1-30) or single human activity (walking, walkingupstairs, walkingdownstairs, sitting,
standing, and laying). The meanidentifier variable identifies the basis of the average calculations.

Each column of the dataset contains a single variable. The dataset includes 1 identifier (meanidentifier) variable and 66 variables describing the calculated means for 33 measures(mean and standard 
deviation) from the original dataset and summarized above. Naming conventions are consistent with hardata.csv; all related variables in this dataset begin with
a prefix mean_.

|variable name	            |	type	 |	range	 |	description	                                                      |
|---------------------------|--------|---------|--------------------------------------------------------------------|
mean_identifer	|	char	|		|	basis for mean calculations (unique subjects or human activities)	|
mean_timebodyaccelmeanx	|	integer	|	[1 - 30]	|	mean_time domain body acceleration - mean - x signal	|
mean_timebodyaccelmeany	|	numeric	|	[-1 - 1]	|	mean_time domain body acceleration - mean - y signal	|
mean_timebodyaccelmeanz	|	numeric	|	[-1 - 1]	|	mean_time domain body acceleration - mean - z signal	|
mean_timebodyaccelstdx	|	numeric	|	[-1 - 1]	|	mean_time domain body acceleration - standard deviation - x signal	|
mean_timebodyaccelstdy	|	numeric	|	[-1 - 1]	|	mean_time domain body acceleration - standard deviation - y signal	|
mean_timebodyaccelstdz	|	numeric	|	[-1 - 1]	|	mean_time domain body acceleration - standard deviation - z signal	|
mean_timegravityaccelmeanx	|	numeric	|	[-1 - 1]	|	mean_time domain gravity acceleration - mean - x signal	|
mean_timegravityaccelmeany	|	numeric	|	[-1 - 1]	|	mean_time domain gravity acceleration - mean - y signal	|
mean_timegravityaccelmeanz	|	numeric	|	[-1 - 1]	|	mean_time domain gravity acceleration - mean - z signal	|
mean_timegravityaccelstdx	|	numeric	|	[-1 - 1]	|	mean_time domain gravity acceleration - standard deviation - x signal	|
mean_timegravityaccelstdy	|	numeric	|	[-1 - 1]	|	mean_time domain gravity acceleration - standard deviation - y signal	|
mean_timegravityaccelstdz	|	numeric	|	[-1 - 1]	|	mean_time domain gravity acceleration - standard deviation - z signal	|
mean_timebodyacceljerkmeanx	|	numeric	|	[-1 - 1]	|	mean_time domain body acceleration jerk - mean - x signal	|
mean_timebodyacceljerkmeany	|	numeric	|	[-1 - 1]	|	mean_time domain body acceleration jerk - mean - y signal	|
mean_timebodyacceljerkmeanz	|	numeric	|	[-1 - 1]	|	mean_time domain body acceleration jerk - mean - z signal	|
mean_timebodyacceljerkstdx	|	numeric	|	[-1 - 1]	|	mean_time domain body acceleration jerk - standard deviation - x signal	|
mean_timebodyacceljerkstdy	|	numeric	|	[-1 - 1]	|	mean_time domain body acceleration jerk - standard deviation - y signal	|
mean_timebodyacceljerkstdz	|	numeric	|	[-1 - 1]	|	mean_time domain body acceleration jerk - standard deviation - z signal	|
mean_timebodygyromeanx	|	numeric	|	[-1 - 1]	|	mean_time domain body gyroscope - mean - x signal	|
mean_timebodygyromeany	|	numeric	|	[-1 - 1]	|	mean_time domain body gyroscope - mean - y signal	|
mean_timebodygyromeanz	|	numeric	|	[-1 - 1]	|	mean_time domain body gyroscope - mean - z signal	|
mean_timebodygyrostdx	|	numeric	|	[-1 - 1]	|	mean_time domain body gyroscope - standard deviation - x signal	|
mean_timebodygyrostdy	|	numeric	|	[-1 - 1]	|	mean_time domain body gyroscope - standard deviation - y signal	|
mean_timebodygyrostdz	|	numeric	|	[-1 - 1]	|	mean_time domain body gyroscope - standard deviation - z signal	|
mean_timebodygyrojerkmeanx	|	numeric	|	[-1 - 1]	|	mean_time domain body gyroscope jerk - mean - x signal	|
mean_timebodygyrojerkmeany	|	numeric	|	[-1 - 1]	|	mean_time domain body gyroscope jerk - mean - y signal	|
mean_timebodygyrojerkmeanz	|	numeric	|	[-1 - 1]	|	mean_time domain body gyroscope jerk - mean - z signal	|
mean_timebodygyrojerkstdx	|	numeric	|	[-1 - 1]	|	mean_time domain body gyroscope jerk - standard deviation - x signal	|
mean_timebodygyrojerkstdy	|	numeric	|	[-1 - 1]	|	mean_time domain body gyroscope jerk - standard deviation - y signal	|
mean_timebodygyrojerkstdz	|	numeric	|	[-1 - 1]	|	mean_time domain body gyroscope jerk - standard deviation - z signal	|
mean_timebodyaccelmagmean	|	numeric	|	[-1 - 1]	|	mean_time domain body acceleration magnitude - mean	|
mean_timebodyaccelmagstd	|	numeric	|	[-1 - 1]	|	mean_time domain body acceleration magnitude - standard deviation	|
mean_timegravityaccelmagmean	|	numeric	|	[-1 - 1]	|	mean_time domain gravity acceleration magnitude - mean	|
mean_timegravityaccelmagstd	|	numeric	|	[-1 - 1]	|	mean_time domain gravity acceleration magnitude - standard deviation	|
mean_timebodyacceljerkmagmean	|	numeric	|	[-1 - 1]	|	mean_time domain body acceleration jerk magnitude - mean	|
mean_timebodyacceljerkmagstd	|	numeric	|	[-1 - 1]	|	mean_time domain body acceleration jerk magnitude - standard deviation	|
mean_timebodygyromagmean	|	numeric	|	[-1 - 1]	|	mean_time domain body gyroscope magnitude - mean	|
mean_timebodygyromagstd	|	numeric	|	[-1 - 1]	|	mean_time domain body gyroscope magnitude - standard deviation	|
mean_timebodygyrojerkmagmean	|	numeric	|	[-1 - 1]	|	mean_time domain body gyroscope jerk magnitude - mean	|
mean_timebodygyrojerkmagstd	|	numeric	|	[-1 - 1]	|	mean_time domain body gyroscope jerk magnitude - standard deviation	|
mean_freqbodyaccelmeanx	|	numeric	|	[-1 - 1]	|	mean_freq domain body acceleration - mean - x signal	|
mean_freqbodyaccelmeany	|	numeric	|	[-1 - 1]	|	mean_freq domain body acceleration - mean - y signal	|
mean_freqbodyaccelmeanz	|	numeric	|	[-1 - 1]	|	mean_freq domain body acceleration - mean - z signal	|
mean_freqbodyaccelstdx	|	numeric	|	[-1 - 1]	|	mean_freq domain body acceleration - standard deviation - x signal	|
mean_freqbodyaccelstdy	|	numeric	|	[-1 - 1]	|	mean_freq domain body acceleration - standard deviation - y signal	|
mean_freqbodyaccelstdz	|	numeric	|	[-1 - 1]	|	mean_freq domain body acceleration - standard deviation - z signal	|
mean_freqbodyacceljerkmeanx	|	numeric	|	[-1 - 1]	|	mean_freq domain body acceleration jerk - mean - x signal	|
mean_freqbodyacceljerkmeany	|	numeric	|	[-1 - 1]	|	mean_freq domain body acceleration jerk - mean - y signal	|
mean_freqbodyacceljerkmeanz	|	numeric	|	[-1 - 1]	|	mean_freq domain body acceleration jerk - mean - z signal	|
mean_freqbodyacceljerkstdx	|	numeric	|	[-1 - 1]	|	mean_freq domain body acceleration jerk - standard deviation - x signal	|
mean_freqbodyacceljerkstdy	|	numeric	|	[-1 - 1]	|	mean_freq domain body acceleration jerk - standard deviation - y signal	|
mean_freqbodyacceljerkstdz	|	numeric	|	[-1 - 1]	|	mean_freq domain body acceleration jerk - standard deviation - z signal	|
mean_freqbodygyromeanx	|	numeric	|	[-1 - 1]	|	mean_freq domain body gyroscope - mean - x signal	|
mean_freqbodygyromeany	|	numeric	|	[-1 - 1]	|	mean_freq domain body gyroscope - mean - y signal	|
mean_freqbodygyromeanz	|	numeric	|	[-1 - 1]	|	mean_freq domain body gyroscope - mean - z signal	|
mean_freqbodygyrostdx	|	numeric	|	[-1 - 1]	|	mean_freq domain body gyroscope - standard deviation - x signal	|
mean_freqbodygyrostdy	|	numeric	|	[-1 - 1]	|	mean_freq domain body gyroscope - standard deviation - y signal	|
mean_freqbodygyrostdz	|	numeric	|	[-1 - 1]	|	mean_freq domain body gyroscope - standard deviation - z signal	|
mean_freqbodyaccelmagmean	|	numeric	|	[-1 - 1]	|	mean_freq domain body acceleration magnitude - mean	|
mean_freqbodyaccelmagstd	|	numeric	|	[-1 - 1]	|	mean_freq domain body acceleration magnitude - standard deviation	|
mean_freqbodybodyacceljerkmagmean	|	numeric	|	[-1 - 1]	|	mean_freq domain body acceleration jerk magnitude - mean	|
mean_freqbodybodyacceljerkmagstd	|	numeric	|	[-1 - 1]	|	mean_freq domain body acceleration jerk magnitude - standard deviation	|
mean_freqbodybodygyromagmean	|	numeric	|	[-1 - 1]	|	mean_freq domain body gyroscope magnitude - mean	|
mean_freqbodybodygyromagstd	|	numeric	|	[-1 - 1]	|	mean_freq domain body gyroscope magnitude - standard deviation	|
mean_freqbodybodygyrojerkmagmean	|	numeric	|	[-1 - 1]	|	mean_freq domain body gyroscope jerk magnitude - mean	|
mean_freqbodybodygyrojerkmagstd	|	numeric	|	[-1 - 1]	|	mean_freq domain body gyroscope jerk magnitude - standard deviation	|


