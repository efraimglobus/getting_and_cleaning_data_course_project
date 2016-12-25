
run_analysis <- function(){
  
  #set working directory
  setwd("C:\\Users\\Efraim\\Desktop\\ds\\UCI HAR Dataset")
  
  #read data
  subjectTrain <- fread("train\\subject_train.txt")
  subjectTest  <- fread("test\\subject_test.txt")
  activityTrain <- fread("train\\Y_train.txt")
  activityTest  <- fread("test\\Y_test.txt" )
  trainData <- getDataTable("train\\X_train.txt")
  testData  <- getDataTable("test\\X_test.txt")
  
  # merge data
  subjects <- rbind(subjectTrain, subjectTest)
  setnames(subjects, "V1", "subject")
  activities <- rbind(activityTrain, activityTest)
  setnames(activities, "V1", "activityNum")
  data <- rbind(trainData, testData)
  subAndAct <- cbind(subjects, activities)
  data <- cbind(subAndAct, data)
  
  #get features with std and mean
  allFeatures <- fread("features.txt")
  features <- allFeatures[grepl("std\\(\\)|mean\\(\\)",allFeatures$V2),]
  colsToSelect <- c("subject","activityNum",paste0("V",features$V1))
  data <- data[,colsToSelect,with = FALSE]
  features$V2 <- tolower(gsub("[^[:alpha:]]", "", features$V2))
  setnames(data,names(data),c("subject","activityNum",features$V2))
  
  #get activities names 
  activityNames <- fread("activity_labels.txt")
  setnames(activityNames, names(activityNames), c("activityNum", "activityName"))
  data <- merge(data, activityNames, by="activityNum", all.x=TRUE)
  
  
  melted <- melt(data, id=c("subject","activityName"))
  tidy <- dcast(melted, subject+activityName ~ variable, mean)
  
  
  
  write.csv(tidy, "tidy.csv", row.names=FALSE)
  
  
  tidy
}












getDataTable <- function (file) {
  text <- read.table(file)
  dataTable <- data.table(text)
}