---
title: "README.md"
author: "Cam Lu, Festus Yeboah, Chris Havenstein"
date: "August 20, 2017"
output: html_document
---

# Introduction:

## MSDS 6306 - Case Study 2

### Goal: 

By using three data sets, the R built-in data set "Orange", and two data sets provided by Dr. Jongwook Woo, "Temp.csv" and "CityTemp.csv", we answered a number of analysis questions of interest.


### Process: 

1. Upon initially reading in the "Temp" and "CityTemp" data sets, it was determined that some cleaning was required. 

    + Note: This process of reading in the data and cleaning it was performed in the R script files "Gather.R" and "TidyData.R". These files can be found within the "Analysis/" folder. The "Temp.csv" and "CityTemp.csv" files can be found in the "Analysis/Data/" folder.

2. We cleaned "Temp.csv" and "CityTemp.csv" with "TidyData.R".

    + The Temp data did not have dates in the same format. Additionally, it was not restricted to years since 1900, as the analysis questions of interest required.
    + The CityTemp data also did not have dates in the same format. We made the same corrections to it.
    + The dataframes created in TidyData.R were used in the analysis to create "Analysis.Rmd".
  

### The Analysis:

* An analysis was performed using the dataframes created by "TidyData.R" to answer two main questions, with some associated sub-questions. These questions for the analysis were answered in the "Analysis.Rmd" file, located in ./Analysis/ folder. A conclusion to the analysis is contained in "Analysis.Rmd" -- listed after the answers to all the questions. The best location to view the final analysis with output and the conclusion is by viewing "Analysis.md", located in the same folder.

    + The analysis in "Analysis.Rmd" sources "Gather.R" and then sources "TidyData.R".
    
    + **Please navigate to the ./Analysis/ folder to view the analysis. Or, use this [link](https://github.com/chavenstein/MSDS6306-CaseStudy2/blob/master/Analysis/Analysis.md).** 
    + If you are viewing the analysis in GitHub, please specifically navigate to the file "Analysis.md" in the ./Analysis/ folder. **This will allow you to view the output to the R code snippets in GitHub.**

