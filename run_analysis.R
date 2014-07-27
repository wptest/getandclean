#read list of Test group Subject IDs
subject_id <- read.table("UCI HAR Dataset/test/subject_test.txt")

#read list of Test group Activities
test_activities <- read.table("UCI HAR Dataset/test/y_test.txt")

#read Test group Raw Data
test_set <- read.table("UCI HAR Dataset/test/X_test.txt")

#read Train group Raw Data
train_set <- read.table("UCI HAR Dataset/train/X_train.txt")

#read Train group Activities
train_activities <- read.table("UCI HAR Dataset/train/y_train.txt")

#get the Training Subject IDs
train_subject_id <- read.table("UCI HAR Dataset/train/subject_train.txt")

#shift the Training Subject IDs to distinguish them from test subject ids
train_subject_id <- train_subject_id + 100

#add Train Actitivies to Train Subjects ID
train_subject_id <- cbind(train_subject_id,train_activities)

#convert Train Activity Labels to more descriptive labels
train_subject_id[2] <- as.data.frame(sapply(train_subject_id[2],gsub, pattern = "1", replacement="WALKING"))
train_subject_id[2] <- as.data.frame(sapply(train_subject_id[2],gsub, pattern = "2", replacement="WALKING_UPSTAIRS"))
train_subject_id[2] <- as.data.frame(sapply(train_subject_id[2],gsub, pattern = "3", replacement="WALKING_DOWNSTAIRS"))
train_subject_id[2] <- as.data.frame(sapply(train_subject_id[2],gsub, pattern = "4", replacement="SITTING"))
train_subject_id[2] <- as.data.frame(sapply(train_subject_id[2],gsub, pattern = "5", replacement="STANDING"))
train_subject_id[2] <- as.data.frame(sapply(train_subject_id[2],gsub, pattern = "6", replacement="LAYING"))

#add labels to Test Subjects ID
subject_id <- cbind(subject_id,test_activities)
#convert test lables to more descriptibe labels
subject_id[2] <- as.data.frame(sapply(subject_id[2],gsub, pattern = "1", replacement="WALKING"))
subject_id[2] <- as.data.frame(sapply(subject_id[2],gsub, pattern = "2", replacement="WALKING_UPSTAIRS"))
subject_id[2] <- as.data.frame(sapply(subject_id[2],gsub, pattern = "3", replacement="WALKING_DOWNSTAIRS"))
subject_id[2] <- as.data.frame(sapply(subject_id[2],gsub, pattern = "4", replacement="SITTING"))
subject_id[2] <- as.data.frame(sapply(subject_id[2],gsub, pattern = "5", replacement="STANDING"))
subject_id[2] <- as.data.frame(sapply(subject_id[2],gsub, pattern = "6", replacement="LAYING"))


#read data table labels
label_list <- read.table("UCI HAR Dataset/features.txt")

label_list[3] <- 0

#rename data table labels to more descriptive labels
templist <- as.data.frame(sapply(label_list[2],gsub, pattern = "-mean\\(\\)", replacement="Mean"))
templist <- as.data.frame(sapply(templist,gsub, pattern = "-std\\(\\)", replacement="STD"))
templist <- as.data.frame(sapply(templist,gsub, pattern = "Acc", replacement="Acceleration"))
templist <- as.data.frame(sapply(templist,gsub, pattern = "tBody", replacement="TimeOfBody"))
templist <- as.data.frame(sapply(templist,gsub, pattern = "tGravity", replacement="TimeOfGravity"))
templist <- as.data.frame(sapply(templist,gsub, pattern = "Gyro", replacement="Gyroscope"))
templist <- as.data.frame(sapply(templist,gsub, pattern = "Mag", replacement="Magnitude"))
templist <- as.data.frame(sapply(templist,gsub, pattern = "fBody", replacement="FrequencyOfBody"))
templist <- as.data.frame(sapply(templist,gsub, pattern = "angle\\(", replacement="AngleOf"))
templist <- as.data.frame(sapply(templist,gsub, pattern = "\\,gravityMean\\)", replacement="GravityMean"))
templist <- as.data.frame(sapply(templist,gsub, pattern = "JerkMean\\)", replacement="JerkMean"))

newdata <-test_set
#rename columns of mydata
#colnames(newdata)<-list(templist)
names(newdata) <- templist$V2
test_set<-newdata
newdata <-train_set
names(newdata) <- templist$V2
train_set<-newdata


#find means
meanlist <- (grep('mean()',label_list$V2))

#find mean freqs
meanfreqlist <- (grep('meanFreq()',label_list$V2))

#remove mean freqs
meanlist2 <- meanlist[! meanlist %in% meanfreqlist]

#find std
stdlist <- (grep("std()",label_list$V2))

#find gravity means
gravmeanlist <- (grep('gravityMean',label_list$V2))

#combine means and std
masterlist <- append(meanlist2,stdlist)

#combine gravity means
masterlist <- append(masterlist,gravmeanlist)

#sort vector
masterlist <- sort(masterlist)

# combine Subject ID (and Activity) with Test RawData
mydata <- cbind(subject_id,test_set)

# combine Subject ID (and Activity) with Train Raw Data
train_set <- cbind(train_subject_id,train_set)

#combine Test and Train Data
mydata <- rbind(mydata,train_set)

#shift vector column count by two (one for Subject ID, one for Activity Label)
masterlist <- masterlist + 2
masterlist <-append(c(1,2),masterlist)
mydata <-mydata[,masterlist]

new_subjects <-  list(mydata[,1])

colnames(mydata)[1]<-"Subject"
colnames(mydata)[2]<-"Activity"

attach(mydata)
aggdata <- aggregate(mydata, by=list(Subject,Activity), FUN=mean,na.rm=TRUE)


aggdata <- subset(aggdata,select=-c(Subject,Activity))
colnames(aggdata)[1]<-"Subject"
colnames(aggdata)[2]<-"Activity"


# Write outut to CSV file
write.csv(aggdata, file = "tidy_data.csv")

