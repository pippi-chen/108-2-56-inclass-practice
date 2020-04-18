library(lubridate); library(stringr); library(dplyr)

test <- 2+3
test

obj11 <- c(
  小明=55,
  小新=88,
  Eric=73
)
names(obj11)

names(obj11) <- c("Ming","Shawn","Eric")
names(obj11)

names(obj11)[c(1,2)] <- c("M","S")
names(obj11)

studentRecord <-
  list(
    學號="410073058",
    姓名="王小明",
    性別="男",
    學年平均成績=list(
      一年級=88,
      二年級=90.3,
      三年級=92,
      四年級=95
    )
  )

names(studentRecord)[[4]] <- "平均成績"
names(studentRecord)
studentRecord

names(studentRecord[[4]]) <- c("一", "二", "三", "四")

library(httr)
commitCheck <- content(GET("https://api.github.com/repos/rstudio/rstudio/commits"))

commit8Date <- commitCheck[[8]][["commit"]][["committer"]][["date"]][[1]]
commit8Date

commit8Date -> ymd_hms(commit8Date)
commit8TWDate <- with_tz(commit8Date, tzone = "Asia/Taipei")
commit8TWDate

names(commitCheck)

names(commitCheck) <- 
  str_c(
    "commit", c(1:length(commitCheck))
  )
names(commitCheck)
commitCheck

library(purrr)
map(commitCheck,~.[[3]][[2]][[3]][[1]]) -> allCommitDatesList

unlist(allCommitDatesList) -> allCommitDates
allCommitDates

allCommitDates <- ymd_hms(allCommitDates)
allCommitDatesTW <- with_tz(allCommitDates, tzone="Asia/Taipei")
allCommitDatesTW

hours <- hour(allCommitDatesTW)
minutes <- minute(allCommitDatesTW)/60
hh.mm <- hours+minutes
logicWithinTimeFrame <- (hh.mm >= 4+(30/60) & hh.mm <= 6+(30/60))
logicWithinTimeFrame
