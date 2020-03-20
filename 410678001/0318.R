install.packages("googlesheets4")
install.packages("dplyr")
install.packages("lubridate")

library(googlesheets4)
library(dplyr)
library(lubridate)

#上課內容
a <- 2
a = 2 # = 與 <-同義
3 -> b

a <- 15
b <- a

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

