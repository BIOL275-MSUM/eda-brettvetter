
<img
src="https://www2.mnstate.edu/uploadedImages/Content/Marketing/logos/MSUM_Signature_Vert_Color.jpg" alt="MSUM logo" width="200" style="float:right">

# Effects of Housing Problems and Home Life on Overall Health

Presentation ID: 4994

Brett Vetter, Dr. Chris Merkord

Biosciences Department, Minnesota State University Moorhead, 1104 7th
Avenue South, Moorhead, MN 56563 USA

## Abstract

Often times when people think of public health, the home you live in
does not come to mind. But many people all over the country and in
Minnesota have severe housing problems. Homes with severe housing
problems are households with at least one of four housing problems:
overcrowding, high housing costs, lack of kitchen facilities, or lack of
plumbing facilities. These things affect your everyday life and tend to
be ignored when it comes to your overall health. People tend to not
correlate living in poverty or our mental health at home with our
overall health either. So the question I have is, do severe housing
problems, living in poverty growing up and living with untreated poor
mental health have an effect on your overall health and your life
expectancy? I will be using data from the Minnesota Health Outcomes data
set, from countyhealthrankings.org. The data set consists of variables
pertaining to health outcomes from the year 2020, specifically looking
at the counties in Minnesota.

## Introduction

My exploratory data analysis will look at the correlation between % of
severe housing problems, average number of mentally unhealthy days and %
of children in poverty, with life expectancy and % of fair or poor
health among counties in Minnesota. I will be looking at the effect some
of these commonly unaddressed issues have on our overall health, along
with the effect other more addressed issues have on our overall health.
I believe the results of this analysis will help medical and public
health workers better focus on simple health factors like where people
eat, sleep and spend most of their time to help diagnose and more
efficiently treat people’s health issues. When treating patients for
health issues we need to pay more attention to the factors that may be
the root to their issues and correcting those factors within our
communities.

## Methods

### Data Acquisition

I found my data on countyhealthrankings.org (U of Wisconsin 2020). I
specifically looked at the Minnesota county health rankings. There I
found and chose the excel sheet “2020 Minnesota Data” and downloaded it.
After I downloaded the excel sheet, I saved the data set to my data
folder I created.

### Data Description

My data consists of 90 rows, each row representing a different county in
Minnesota. The variables I chose to use from the data set were: %
Housing problems- Numerical Continuous, % Fair or poor health- Numerical
Continuous, Life expectancy- Numerical Continuous, Average number of
mentally unhealthy days- Numerical Continuous, and % of children in
poverty- Numerical Continuous.

### Data Preparation

For this data analysis I used Rstudio version 1.3.1093 (RStudio Team
2020) which is in R version 4.0.3(R Core Team 2020). I had to download
my data through excel, so to get the data into my own data table in r
studio I used the packages dplyr (Wickham et. al 2020) and readxl
(Wickham and Bryan 2019). I then assigned the function read\_excel to
the term “download data”. This function allows me to read in data coming
from an excel file. Within that function I then used the sheet and skip
functions to select which sheets of data I was using for my analysis.
The data contained many variables I was not interested in, which I
removed. The ones I kept were: % of severe housing problems, average
number of mentally unhealthy days, % of children in poverty, % fair or
poor health, life expectancy, and % smokers.

## Results

![](README_files/figure-gfm/unnamed-chunk-2-1.png)<!-- -->

Figure 1. Correllation between % of Severe Housing Problems and % of
Fair or Poor Health.

![](README_files/figure-gfm/unnamed-chunk-3-1.png)<!-- -->

Figure 2. Correllation between % of Severe Housing Problems and Life
Expectancy.

![](README_files/figure-gfm/unnamed-chunk-4-1.png)<!-- -->

Figure 3. Correllation between average number of mentally unhealthy days
and % of Fair or Poor Health.

![](README_files/figure-gfm/unnamed-chunk-5-1.png)<!-- -->

Figure 4. Correllation between average number of mentally unhealthy days
and Life Excpectancy.

![](README_files/figure-gfm/unnamed-chunk-6-1.png)<!-- -->

Figure 5. Correllation between % of Severe Housing Problems and average
number of mentally unhealthy days.

![](README_files/figure-gfm/unnamed-chunk-7-1.png)<!-- -->

Figure 6. Correllation between % of children in poverty and % of Fair or
Poor Health.

![](README_files/figure-gfm/unnamed-chunk-8-1.png)<!-- -->

Figure 7. Correllation between % of children in poverty and Life
Expectancy.

![](README_files/figure-gfm/unnamed-chunk-9-1.png)<!-- -->

Figure 8. Correllation between % of children in poverty and average
number of mentally unhealthy days.

## Discussion

Severe housing Problems did have a minor effect on the % of people with
fair or poor health and life expectancy, not as much as I though but it
for sure is a factor. Poor mental health and children living and growing
up in poverty did seem to have a strong effect on the % of people with
fair or poor health and life expectancy. Along with that, housing
problems had a fairly strong effect on the mental health of people and
the % of children living in poverty did seem to have a very strong
effect on mental health as well. Plus, as we know now poor mental health
has a strong effect on the overall health of people.

Hopefully medical and public health workers better focus on simple
health factors like where we live, the conditions we live in and our
mental state we live in every day to help diagnose and more efficiently
treat people’s health issues.

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
