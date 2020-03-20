#1
`我的年紀`<-20
my_age<-`我的年紀`

'我的年紀'=20
my_age='我的年紀'

"我的年紀"<-20
My_age<-"我的年紀"

'我的年紀'<-20
my_age->20  #wrong

我的年紀<-19
my_age<-我的年紀  #在某些電腦可能wrong

#2
library(readr)
A02_company_all_public <- read_csv("https://www.dropbox.com/s/rtz2a9na62n3a8l/A02_company_all_public.csv?dl=1")
A02_company_all_public$`候選人` -> candidate
