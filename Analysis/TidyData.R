######################
# TidyData.R
#
# Clean and save the raw data as local dataframes for the analysis
# 1. Convert the date factor column in temperature data to date data type and change to standard date format (YYYY-MM-DD)
# 2. Create a subset from temperature data for year after 1900 to be used for answer one of the analysis questions
#   Find the difference between the maximum and the minimum monthly average temperatures 
#   for each country and report/visualize top 20 countries with the maximum differences for the period since 1900.
#
# Cam Lu, Festus Yeboah, Chris Havenstein
# Updated 8/20/2017
# Project MSDS 6306 Case 2 Study.
#
######################



#The date column on the temperature is factor, need to convert them to data type date.
#There are two data factor for date column that one is 1838-04-01 format and another one is 7/1/1976
#Need to convert the date to xxxx-xx-xx format

#Convert xxxx-xx-xx date factor format to xxxx-xx-xx date data type. Save it to variable a, the 1838-04-01 date format
#will become 1838-04-01 date data type and 7/1/1976 will become NA in a.
a <- as.Date(temp$Date)

#Convert 7/1/1976 factor into the 7-1-1976 data type and save it into tempory variable b. The date factor 1838-04-01
#format will become NA in b

b <- as.Date(temp$Date, "%m/%d/%Y")

#Merge two data types in two variables into one variable a with date 1976-7-1 format.
a[is.na(a)] <- b[!is.na(b)]

#Save the date with same date format back to temperature data frame.
temp$Date <- a

#Create subset temperature from year of 1900 because one of questions in this project is:
#
#Find the difference between the maximum and the minimum monthly average temperatures 
#for each country and report/visualize top 20 countries with the maximum differences for the period since 
#1900.

temp1900 <- subset(x = temp, temp$Date > as.Date('1900-1-1'))

#clean up the tempory variables a and b.
rm(a,b)


#Create subset for temperature after 1990 for project questions.
UStemp <- subset(x = temp, temp$Date > as.Date("1990-1-1") & temp$Country == "United States")

#Create dates variable different level for each year.
dates <- as.Date(c("1990-01-01", "1991-01-01", "1992-01-01", "1993-01-01", "1994-01-01", "1995-01-01", "1996-01-01", 
                   "1997-01-01", "1998-01-01", "1999-01-01","2000-01-01","2001-01-01","2002-01-01", "2003-01-01", 
                   "2004-01-01", "2005-01-01", "2006-01-01", "2007-01-01", "2008-01-01", "2009-01-01", "2010-01-01
                   2011-01-01", "2012-01-01", "2013-01-01", "2014-01-01"))

#This subsets the UStemp1990 data set to include just the years in the "dates" vector (1990 and later).
UStemp$Year <- cut(UStemp$Date, dates)

#Create a year factor column for later,
#then calculate the average yearly temperature from average monthly temperature column
levels(UStemp$Year)<- c("1990", "1991", "1992", "1993", "1994", "1995", "1996", "1997", "1998", "1999", "2000", 
                        "2001", "2002", "2003", "2004", "2005", "2006", "2007", "2008", "2009", "2010", "2011", 
                        "2012", "2013")

#Convert the "Date" column vector in CityTemp to the Date class.
a <- as.Date(CityTemp$Date)
b <- as.Date(CityTemp$Date, "%m/%d/%Y")

#Ensure all the Dates are in the correct format and assign them to the "Date" column in CityTemp
a[is.na(a)] <- b[!is.na(b)]
CityTemp$Date <- a

#Create the final CityTemp1900 dataframe for analysis questions
CityTemp1900 <- CityTemp[(CityTemp$Date > as.Date("1900-01-01")),]



