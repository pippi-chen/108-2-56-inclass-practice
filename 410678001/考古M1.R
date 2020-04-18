library(lubridate); library(stringr); library(dplyr); library(readr); library(purrr)

test <- 2+3
test

x <- as.character(round(runif(10)*100),10)
x

logicBig <- (as.integer(x) > 50)
logicBig

compoundObject <- list(
  1, 
  "hello", 
  T
)
compoundObject

load("submitTime.Rda")

submitTime1 <- mdy_hms(submitTime)
nyTime <- with_tz(submitTime1,tzone = "America/New_York")
nyTime <- as.character(nyTime)
nyTime

a <- list(
  學號=c("a23","a22","a41"),
  成績=c(88,76,82)
)
map(a,~.[[2]]) ### 取出每個元素第二位
map(a,~.[c(1,3)]) ### 取出每個元素第一及第三位
map(a,~.[c(T,F,T)]) ### 取出每個元素第一及第三位

randomGrades <- sample(40:80,15,replace = T)
randomCredits <- sample(0:3,15,replace=T)
data3 <- list(
  成績=randomGrades,
  學分數=randomCredits
)

passLogic <- data3$成績>=60
map(data3,~.[passLogic]) -> passData
passData

sample(99:103,15,replace = T)-> yy
sample(1:12,15,replace=T)-> mm
str_c("民國",str_pad(yy,3,"left","0"),"年",mm,"月") -> twDates
twDates

twDates2 <- str_replace(twDates, "民國", "")
twDates2 <- str_replace(twDates2, "月", "")
twDates2

dateList <- str_split(twDates2, "年")
yy <- map(dateList,~.[[1]])
westYears <- as.integer(yy)+1911
westYears

mm <- map(dateList,~.[[2]])
ymdString <- str_c(westYears,mm,"1",sep="-")
westDates <- ymd(ymdString) 
westDates

load("invoiceList.Rda")
str(invoiceList)
names(invoiceList) <-
  c('訂單時區','訂單時間(以訂單時區顯示)','UTC時間')

names(invoiceList)[[2]] <- "訂單時區之下單時間"
invoiceList

(invoiceList$訂單時區=="America/New_York") -> nyLogical
(invoiceList$訂單時區=="Asia/Taipei") -> tpLogical
invoiceList$UTC時間[nyLogical] <-
  with_tz(ymd_hms(invoiceList$`訂單時區之下單時間`[nyLogical],
                  tz="America/New_York"),tzone="UTC")
invoiceList$UTC時間[tpLogical] <-
  with_tz(ymd_hms(invoiceList$`訂單時區之下單時間`[tpLogical],
                  tz="Asia/Taipei"),tzone="UTC")
invoiceList 

load("sampledTranscriptData.Rda")
names(sampledTranscriptData) <- 
  c('學號','學期成績','學分數','學年','學期','必選修類別（必／選／通）','系級','科目名稱','年級','學屆')

(sampledTranscriptData$科目名稱 == "科目204") -> chosenSubjectLogi
sampledTranscriptData$學期成績[chosenSubjectLogi] -> chosenGrades
sum(chosenGrades<60)/length(chosenGrades) -> failRate
failRate


