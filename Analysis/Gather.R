################
# Gather.R
#
# Read CSV files from the Data folder
# Cam Lu, Festus Yeboah, Chris Havenstein
# Updated 8/20/2017
# Project MSDS 6306 Case 2 Study.
# 
################

#set the project working directory to your local Analysis directory
setwd("C:/Users/Chris/Desktop/GIT home/MSDS 6306 - Case Study 2/Analysis")
#get the project working directory
#getwd()


#Load the R data set "Orange" into memory to calculate the mean, median of orange tree truck 
#circumferences for different size of tree
data("Orange")


#Display first 10 rows of Orange raw data.
#head(Orange)

#Read temperature data provided by Instructor for monthly average temperature for different countries.
temp <- read.csv(file = "data/TEMP.csv", header = TRUE)

#display the first ten rows of temperature data.
#head(temp)

#Read different temperature data set also provided by Instructor for City temperatures
CityTemp <- read.csv(file = "data/CityTemp.csv", header = TRUE)





