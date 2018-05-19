setwd("~\\courseera\\EDE_Proj1")
library(dplyr)
library(lubridate)
if (!file.exists("d.zip")){
  download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip","d.zip")
}
if(!file.exists("household_power_consumption.txt")){
  unzip("d.zip")
}
if(!exists("d1")){
  d1<-read.delim("household_power_consumption.txt",sep = ";",na.strings = "?") %>% as_tibble()  
 d1$Date<-dmy(d1$Date)
}

d1<-filter(d1,Date>=dmy("01/02/2007") & Date <=dmy("02/02/2007"))
d1<- d1 %>% mutate(DateTime=paste(Date,Time))
d1$DateTime<-d1$DateTime %>% ymd_hms() 

d1<-d1 %>% filter(!is.na(Global_active_power))

source("plot1.R")
source("plot2.R")
source("plot3.R")
source("plot4.R")

