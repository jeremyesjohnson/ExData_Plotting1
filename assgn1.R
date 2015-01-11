### Data Initialization
#      Inputs: Power consumption data from "data.txt" (originally "household_power_comsumption.txt")
#     Outputs: a data.table named "data"
# Assumptions: "data.txt" is in your current working directory.
#              "data.txt" contains power consumption data from UC Irvine Machine Learning Repository 
#               (https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip)

library(sqldf)
data<-read.csv.sql("data.txt","select * from file where Date in ('1/2/2007','2/2/2007')", sep = ';', header = T)
