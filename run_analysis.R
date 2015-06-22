#Load dependancies
library(plyr)
library(dplyr)

#Read files
activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt")
features <- read.table("./UCI HAR Dataset/features.txt")
X_test <- read.table("./UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("./UCI HAR Dataset/test/y_test.txt")
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt")
X_train <- read.table("./UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("./UCI HAR Dataset/train/y_train.txt")
subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt")

#Name columns
colnames(activity_labels) <- c("activity_id","Activity")
colnames(y_test) <- colnames(y_train) <- "activity_id"
colnames(subject_test) <- colnames(subject_train) <- "Subject"
colnames(X_test) <- colnames(X_train) <- make.names(features$V2, unique = TRUE)

#Merge data and create tidy data set
X_test <- X_test %>% mutate(TrainingOrTest = "Test") %>% bind_cols(y_test, subject_test)
X_train <- X_train %>% mutate(TrainingOrTest = "Training") %>% bind_cols(y_train, subject_train)
tidy <- bind_rows(X_test, X_train) %>%
        merge(activity_labels) %>%
        select(Subject, Activity, contains("mean.."), contains("std..")) %>%
        ddply(.(Subject, Activity), numcolwise(mean))