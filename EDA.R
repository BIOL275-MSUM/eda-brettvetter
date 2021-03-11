
# Load Packages -----------------------------------------------------------

library(tidyverse)

install.packages("readxl")

library(readxl)

# Read Data ---------------------------------------------------------------
download_data <- read_excel("Data/2020 County Health Rankings Minnesota Data - v1_0 (3).xlsx", 
                            sheet= "Ranked Measure Data", skip = 1)
download_data
