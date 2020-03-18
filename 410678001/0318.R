install.packages("installr")
require(installr)
updateR()

install.packages("rmarkdown", lib = "C:/Program Files/R/R-3.6.1/library")

library(googlesheets4)
library(dplyr)
library(lubridate)

#看以下那些有命名錯誤的存在
my_108_total_credits <- 15
_108_total_credits <- 15
108_total_credits <- 15
_my_108_total_credits <- 15
my.108.total_credits <- 15
.108.total_credits <- 15 # 隱藏變數
.my.108.total_credits <- 15
我的108學年總學分數 <- 15
`我的108學年總學分數` <- 15 # 特殊名稱處理，`不是名稱的一部份
`.108.total_credits` <- 15
