# run-analysis.R
# Generates 2 tidy datasets (har,haravg) based on UCI HAR dataset
# datasets and original zipfile stored in new data directory
# information collected from 30 subjects based on Samsung smartphones

library(data.table)
library(dplyr)

# storing, downloading, and unzipping original data files
getwd()
if(!file.exists("./data")){dir.create("./data")}
setwd("./data") 
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl, destfile="temp.zip")
unzip ("temp.zip", exdir = "./zip")

# reading in test and training files - measures, activities, & subject files

# measures
xtest <- read.table("./zip/UCI HAR Dataset/test/X_test.txt")
xtrain <- read.table("./zip/UCI HAR Dataset/train/X_train.txt")
features <- read.table("./zip/UCI HAR Dataset/features.txt")
colnames(xtest) = features$V2
colnames(xtrain)= features$V2

# activities
ytest <- read.table("./zip/UCI HAR Dataset/test/y_test.txt",col.names=c("activity"))
ytrain <- read.table("./zip/UCI HAR Dataset/train/y_train.txt",col.names=c("activity"))
# subjects
subtest <- read.table("./zip/UCI HAR Dataset/test/subject_test.txt",col.names=c("subjectid"))
subtrain <- read.table("./zip/UCI HAR Dataset/train/subject_train.txt",col.names=c("subjectid"))

# merging training and test sets
# consistent with tidy data - 1 obs per row, 1 variable per column
test <- cbind(subtest,xtest,ytest)
train <- cbind(subtrain,xtrain,ytrain)
testtrain <- rbind(test,train)

# extracting subset of data involving measures with mean and std values
subtesttrain <- testtrain[,grepl("mean[(]|std[(]|activity|subject", names(testtrain))]

# adding new activitydesc variable to make variable info more accessible 

subtesttrain<-
        mutate(subtesttrain, activitydesc=
               ifelse(activity %in% 1, "walking",
                      ifelse(activity %in% 2, "walkingupstairs",
                             ifelse(activity %in% 3, "walkingdownstairs",
                                    ifelse(activity %in% 4, "sitting",
                                           ifelse(activity %in% 5, "standing","laying"))))))

# adjusting variable names to be more descriptive based on original data documentation
# and to avoid containing odd characters
n1 <- tolower(names(subtesttrain))
n2 <- gsub("-","",n1)
n3 <- gsub("^t","time",n2)
n4 <- gsub("[()]","",n3)
n5 <- gsub("^f","freq",n4)
n6 <- gsub("acc","accel",n5)
names(subtesttrain) <- n6

# first human activity recognition tidy dataset in R format
har <- subtesttrain


# creating second tidy dataset with average measure by subject and activity
tempdt <- data.table(har)

# means by subject
tempsub <- tempdt %>% 
        group_by(subjectid) %>% 
        summarise_each(funs(mean(.,na.rm=TRUE)))

tempsubdf <- data.frame(tempsub)
colnames(tempsubdf) <- paste("mean",colnames(tempsubdf),sep="_")
tempsubdf <- mutate(tempsubdf, mean_identifer=paste("subject",mean_subjectid,sep="_"))
tempsubdf <- subset(tempsubdf, select = -c(mean_activity,mean_subjectid,mean_activitydesc))

#means by activity
tempact <- tempdt %>% 
        group_by(activitydesc) %>% 
        summarise_each(funs(mean(.,na.rm=TRUE)))

tempactdf <- data.frame(tempact)
colnames(tempactdf) <- paste("mean",colnames(tempactdf),sep="_")
tempactdf <- mutate(tempactdf, mean_identifer=paste("activity",mean_activitydesc,sep="_"))
tempactdf <- subset(tempactdf,select=-c(mean_activity, mean_subjectid,mean_activitydesc))

# combining into single dataset with common identifier field
haravgdata <- rbind(tempsubdf,tempactdf)

# second tidy har dataset with identifier moved to first column
haravgdata <- haravgdata[,c(ncol(haravgdata),1:(ncol(haravgdata)-1))]

# saving tidydatasets as csv files
write.csv(har, file = "hardata.csv",row.names=FALSE)
write.csv(haravgdata, file = "haravgdata.csv",row.names=FALSE)

# removing temporarty files
remove(tempsub,tempsubdf,tempact,tempactdf)
remove(xtest,xtrain,ytest,ytrain,test,train)
remove(n1,n2,n3,n4,n5,n6)
