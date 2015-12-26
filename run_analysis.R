library(data.table)

## get all possible variables
variables <- read.table("features.txt",sep= " ",stringsAsFactors = FALSE)
variables <- variables$V2

## Find locations of variables that calculate mean or std deviation
interest <- grep(pattern = "mean|std",variables,ignore.case = TRUE)

## creating names for the required variables for the training and test data set's variables
## used make.names command to automatically generate proper R names for the chosen variables
## which involves replacing improper characters with ".". So characters like "(",")"," " were 
## replaced with dots. These dots were replaced with _(underscore) and then any underscore at the
## end of the name was removed. 
col_names <- gsub(pattern = "\\.+",replacement = "_",x = make.names(variables[interest]))
col_names <- gsub(pattern = "_$","",col_names)


## Read train and test data for only given columns using the select option of the fread command
train <- fread("train/X_train.txt",header = FALSE,select = interest,col.names = col_names)
test <- fread("test/X_test.txt",header=FALSE,select = interest,col.names = col_names)


## Read train and test activity and subject identifier data
activity_train <- fread("train/y_train.txt",colClasses = "factor",stringsAsFactors = TRUE,col.names = "code")
activity_test <- fread("test/y_test.txt",colClasses = "factor",stringsAsFactors = TRUE,col.names = "code")

subject_train <- fread("train/subject_train.txt",colClasses = "factor",stringsAsFactors = TRUE,col.names = "Subject")
subject_test <- fread("test/subject_test.txt",colClasses = "factor",stringsAsFactors = TRUE,col.names = "Subject")


## Read activity labels
activities <- read.table("activity_labels.txt",col.names = c("code","label"),colClasses = rep("factor",2),stringsAsFactors = TRUE)
## Reorder the levels in the order given in the file. Use the ordered() function so 
## that ordering on activity label would be done in the same order rather than alphabetical.
activities$label <- ordered(activities$label,levels = activities$label)


## create named vector of Labels that has "1" = "Walking" and so on...
act <- activities$label
names(act) <- activities$code

## Add activity labels using the named vector created above to the activity data set.
activity_train[,Activity:= act[code]]
activity_test[,Activity:= act[code]]


## Adding activity label to training and test data set using data.table methods
train[,Activity:=activity_train$Activity]
test[,Activity:=activity_test$Activity]


## add Subject ID to the two sets (since the subject_test has only one column directly
## naming the data.frame works!)
test[,Subject:=subject_test]
train[,Subject:=subject_train]


## Combining training and test data set into one.
fullset <- rbind(train,test)


## Summarising each variable for each subject and activity
## Here the data.table method was used which seemed the simplest and fastest way of 
## aggregating it.
summarisedSet <- fullset[,lapply(.SD,mean),by = .(Subject,Activity)]
## What the command does, is create groups of data.frames using Subject and Activity
## These different groups can all be seperately accessed using .SD to apply the same 
## functions to all of them. 
## The lapply is then used to apply mean to each of their columns.
## the different variables will retain their name



## Setting Subject ID to numeric to sort properly
summarisedSet[,Subject:=as.numeric(Subject)]

## Sorting on Subject ID and then Activity
summarisedSet <- summarisedSet[order(Subject,Activity)]


## Finally writing the summarised tidy data set to a text file
write.table(summarisedSet,file = "TidyDataSet.txt",row.names = FALSE)