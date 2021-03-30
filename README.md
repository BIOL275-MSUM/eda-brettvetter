Effects of Housing Problems on Life Expectancy
================
Brett Vetter
2021-03-30

## Abstract

Often times when people think of public health, the home you live in
does not come to mind. But many people all over the country and in
Minnesota have severe housing problems, a home with severe housing
problems are households with at least one of four housing problems:
overcrowding, high housing costs, lack of kitchen facilities, or lack of
plumbing facilities. So, the question I have is, do severe housing
problems have an effect on your overall health and your life expectancy?
I will be using data from the Minnesota Health Outcomes data set, from
countyhealthrankings.org. My exploratory data analysis will compare the
variables of percentage of Severe Housing problems with Life expectancy
among counties in Minnesota. I believe the results of this analysis will
help medical workers and public health workers better focus on simple
things like where people eat, sleep, play to help diagnose and treat
people’s health issues and keep people as healthy as possible.

## Introduction

## Methods

### Data Acquisition

I found my data on countyhealthrankings.org (U of Wisconsin 2020). I
specifically looked at the Minnesota county health rankings. I went to
the download tab on the Minnesota Rankings Page. Once on the download
tab, I chose the excel sheet “2020 Minnesota Data” and downloaded it.
After I downloaded the excel sheet, I saved the excel data set to my
data folder I created on my laptop.

### Data Preparation

After I moved the data set into my folder, I had to get the data into my
own data table in r studio (RStudio Team 2020) using the packages dplyr
(Wickham et. al 2020) and readxl (Wickham and Bryan 2019). I then
assigned the function read\_excel to the term “download data”. This
function allows me to read in data coming from an excel file. Within
that function I then used the sheet and skip functions to select which
sheets of data I was using for my analysis. I Then used the glimpse
function to preview the data I am using. Then I used the transmute
function to select the specific variables I would like to use for my
analysis.

## Results

## Discussion

## Literature Cited

Hadley Wickham and Jennifer Bryan (2019). readxl: Read Excel Files. R
package version 1.3.1. <https://CRAN.R-project.org/package=readxl>

Hadley Wickham, Romain François, Lionel Henry and Kirill Müller (2020).
dplyr: A Grammar of Data Manipulation. R package version 1.0.2.
<https://CRAN.R-project.org/package=dplyr>

RStudio Team (2020). RStudio: Integrated Development Environment for R.
RStudio, PBC, Boston, MA URL <http://www.rstudio.com/>.

R Core Team (2020). R: A language and environment for statistical
computing. R Foundation for Statistical Computing, Vienna, Austria. URL
<https://www.R-project.org/>.

University of Wisconsin Population Health Institute. County Health
Rankings 2020. Available at www.countyhealthrankings.org. Accessed
3/4/2020.
