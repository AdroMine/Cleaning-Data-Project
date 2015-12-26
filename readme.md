## Readme

This repository contains files used to complete the project of "Getting and Cleaning Data" course on Coursera.
<br>  
<br>
### Data Cleaning and merging  
---  
R (v 3.2.2) software was used to clean and merge the given datasets. The `data.table (1.9.6)` library was used to read in the two datasets.  

Since out of the original 561 variables, only a handful needed to be taken, first of all the names of all variables were loaded from the "features.txt" file. Out of these, the variables that contained "mean" or "std" were selected out using `grep` command in R. This yielded 86 variables.  

Next, using `fread` command from `data.table` package, the selected variables of the training and test data sets were read ("X_train.txt","X_test.txt"). Next, the corresponding files identifying the subject ("subject_train.txt","subject_test.txt") and activity ("y_train.txt","y_test.txt") were read.  

The "activity_label.txt" provided the labels for the six activities, which were recorded as integers in the above files. This data was used to add the corresponding labels to the loaded data, after which the data identifying subject and activity was added to the training and test data sets.   

The two sets were now merged using the `rbind` command.  

To get the final independent data set with average of each variable for each activity and subject, the `data.table`'s notation of `[]` was used to aggregate and summarise (using the `.SD` functionality).    

The summarised data set was finally written to a text file "TidyDataSet.txt". The dimensions of this data set are [180 X 88]. There were 30 subjects, and each performed 6 activities, leading to 180 rows, and 88 columns for the 88 variables.

Specific detail regarding each step can be found in the comments of the script `run_analysis.R`