#Getting and Cleaning Data (getdata-005) Course Project

This is a course project for the [Johns Hopkins Bloomberg School of Public Health's Getting and Cleaning Data online course] (https://class.coursera.org/getdata-005/). This repository consists of two essential components: the R script used for analysis (*run_analysis.R*) and the codebook (*CodeBook.md*). The output of the R script, which is the required tidy data, is also included in this repository. The data used for this project can be downloaded [here] (https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip).

##About the raw data
The data was collected through experimentation of 30 volunteers within an age bracket of 19-48 years wearing a Samsung Galaxy II on their waste, utilizing its embeded accelerometer and gyroscope. The study was conducted by Reyes-Ortiz et al for Smartlab - Non Linear Complex Systems Laboratory, DITEN - Università degli Studi di Genova.

In summation, there are 561 features captured by the devices, 2947 observations for the test data and 7352 observations for the training data. Subjects and Activities are labelled via their IDs; the Activities are identified in the dataset (see **activity_labels.txt**) while the Subjects remain anonymous. Further information regarding the features is detailed in the dataset (see **features_info.txt**).

##About the Script
The analysis script (see **run_analysis.R**) was used to transform the raw data into what is formally known as *tidy data* in preparation for further analysis. The script was systematically coded to check of the criteria of the course project sequentially. The first step involved reading the training and test data into variables before they were merged. The next step was to eliminate the unnecessary data and leaving only the mean() and std() records, as per the requirements of the course project. (meanFreq() values are not included because they are different than mean() according to the available features_info.txt) The names of the columns were then parsed to become more readable, based on R naming conventions. The merged dataset was then recasted based on the Subject ID and Activity value pair, with the mean of the variables as the new values of the cleaned up table.

To run the script, you have to first set your working directory to be the same as the directory where the UCI HAR Dataset folder is created. (DO NOT set your working directory as the dataset folder)

##About the CodeBook
The codebook (see **CodeBook.md**) contains the dictionary of the data (name, brief description, type, components). It is patterned on the codebook used in the previous exams of the course.

##About the Output
The output is a tidy table that consists of 180 objects and 68 variables (subjectId, activity and 66 mean() and std() features). The values have been reduced to 180 from its original 10299 objects because they have been melted down to result into their respective averages, as per the requirements of the project. Regarding the column names used, because a concensus naming convention for R does not exist, a combination of dot notation and camel case to make the parts of the variable names more readable (segmented by its purpose). There are many [conflicting] (http://stat405.had.co.nz/r-style.html) naming conventions and, contrary to what was stated regarding the use of dot notation, it is still a preferred practice as stated [here] (http://google-styleguide.googlecode.com/svn/trunk/Rguide.xml) and [here] (http://www.johndcook.com/R_language_for_programmers.html) (see *Identifiers* and *Variable name gotchas*, respectively).
