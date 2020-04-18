library(lubridate); library(stringr)

test <- 2+3
test

major <- c("經濟系","法律系","社會系","經濟系")
grade <- c(50,60,92,88)

fromEcon <- major == "經濟系"
fromEcon

sumEcon <- sum(fromEcon)
sumEcon

meanEcon <- sum(grade[fromEcon])/sum(fromEcon)
meanEcon

library(readr)
podcastcompetition3 <- read_csv("https://raw.githubusercontent.com/tpemartin/github-data/master/podcastcompetition3.csv")
submitTime <- podcastcompetition3$Timestamp
head(submitTime)

submitTime <- mdy_hms(submitTime)
submitTime

twTime <- with_tz(submitTime, tzone = "Asia/Taipei")
twTime

hour(twTime)
nightOwl <- hour(twTime) >= 1 & hour(twTime) <= 6
nightOwl

nightOwlVoteShare <- sum(nightOwl)/length(nightOwl)
nightOwlVoteShare

library(readr)
transcriptDataFinal <- read_csv("https://raw.githubusercontent.com/tpemartin/github-data/master/transcriptDataFinal.csv")
studentID <- transcriptDataFinal$學號
schoolYear <- transcriptDataFinal$學年
grade <- transcriptDataFinal$學期成績
credit <- transcriptDataFinal$學分數

earnedCredit <- (grade >= 60)*credit
earnedCredit <- as.integer(earnedCredit)
earnedCredit

ChosenId <- studentID == "046S6f645"
credit100ChosenStudent <- sum((isChosenStudent & schoolYear==100)*credit)
credit100ChosenStudent

earnedCredit100ChosenStudent <- sum((isChosenStudent & schoolYear==100)*earnedCredit)
earnedCredit100ChosenStudent

subjectFitsCriteria <- (isChosenStudent & schoolYear==100 & credit >0 ) 
gpa100ChosenStudent <- sum(subjectFitsCriteria*grade*credit)/sum(subjectFitsCriteria*credit)
gpa100ChosenStudent
