Getting and Cleaning Data Course Project Files
=====

**This repository contains for the files for the Getting and Cleaning Data Course Project.**

**Files in:**
* README.md  - (this file) - Contain overview of files, source of data, and how to the script, and what the script des
* run_analysis.R - R code for downloading, cleaning, removing unwanted variables from the raw data. Then the script finds the means of the remaining variables and outputs the results to a text file.
* tidy_data.txt - a comma delimited file which is the output from run_analysis.R
* CODEBOOK.md

**Source Raw Data used:**
* [Human Activity Recognition Using Smartphone - UCI](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

The raw data file contains the measurements from a study recording the daily activity of 30 test subjects, ages 19-48 years old. The data was collected using the accelerometer and gyroscope from a smartphone (Samsung Galaxy S II) attached to the waist. Activities tracked: walking, walking up stairs, walking downstairs, sitting, standing, and laying.

Go to the study link above to download the data, and for the full description data set.

**CODEBOOK.md:**
in this repository for detailed list of variables of this analysis and the resulting tidy data set.

**How to use these files:**
* Download the files from [Human Activity Recognition Using Smartphone](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)
* Copy the files from this repository into the same directory as the raw data.
* Use R to run the run_analysis.R file.
* Review the output file: tidy_data.txt.

**What the run_anlaysis.R file does:**
* Reads in the raw data files. It assumes that the data file is stored in a folder called:
"UCI HAR Dataset", and the folder is located in the same directory as the R script.
* Replaced the Activity code from numbers to: walking, walking up stairs, walking downstairs, sitting, standing, and laying.
* Converts the descriptions of the variables from the raw data into more descriptive wording.
* Removes necessary variables, and keeps only the mean and standard deviation variables. (Note: mean frequency is intentionally not included.
* Subject ID and Activity variables are added to the raw data.
* Subjects from the Test and Training data sets are combined into one data set.
* Mean is calculated from the raw mean and standard deviation variables.
* Results are output to tidy_data.txt file.