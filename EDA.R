

# Load Packages -----------------------------------------------------------

library(tidyverse)

library(readxl)

install.packages("corrplot")

library(corrplot)

# Read Data ---------------------------------------------------------------
ranked_meas_data <- read_excel("Data/2020 County Health Rankings Minnesota Data - v1_0 (3).xlsx", 
                            sheet= "Ranked Measure Data", skip = 1)
ranked_meas_data
glimpse(ranked_meas_data)

ranked_meas_data <- 
  transmute(
    ranked_meas_data,
    FIPS,
    State,
    County,
    Deaths,
    Housing_Probs = `% Severe Housing Problems`,
    FP_Health = `% Fair or Poor Health`,
    Smokers = `% Smokers`,
    Mental_Unhealthy_Days = `Average Number of Mentally Unhealthy Days`,
    Children_Poverty = `% Children in Poverty`
  )

add_meas_data <- read_excel("Data/2020 County Health Rankings Minnesota Data - v1_0 (3).xlsx",
                               sheet = "Additional Measure Data", skip = 1)

add_meas_data <-
  transmute(
    add_meas_data,
    FIPS,
    Life_Expec = `Life Expectancy`
  )

joined_data <- inner_join(ranked_meas_data, add_meas_data, by = "FIPS")

joined_data

# Plots ------------------------------------------------------------------

joined_data %>%
  filter(!is.na(County)) %>% 
  select(-FIPS, -State, -County, -Deaths) %>% 
  cor(use="na.or.complete") %>%
  corrplot(method="circle")

ggplot(joined_data, aes(x=Housing_Probs, y=FP_Health))+ geom_point()+
  geom_smooth(method=lm)

ggplot(joined_data, aes(x=Housing_Probs, y=Life_Expec))+ geom_point()+
  geom_smooth(method=lm)

ggplot(joined_data, aes(x=Smokers, y=FP_Health))+ geom_point()+
  geom_smooth(method=lm)

ggplot(joined_data, aes(x=Smokers, y=Life_Expec))+ geom_point()+
  geom_smooth(method=lm)

ggplot(joined_data, aes(x=Mental_Unhealthy_Days, y=FP_Health))+ geom_point()+
  geom_smooth(method=lm)

ggplot(joined_data, aes(x=Mental_Unhealthy_Days, y=Life_Expec))+ geom_point()+
  geom_smooth(method=lm)

ggplot(joined_data, aes(x=Housing_Probs, y=Mental_Unhealthy_Days))+ geom_point()+
  geom_smooth(method=lm)

ggplot(joined_data, aes(x=Children_Poverty, y=FP_Health))+ geom_point()+
  geom_smooth(method=lm)

ggplot(joined_data, aes(x=Children_Poverty, y=Life_Expec))+ geom_point()+
  geom_smooth(method=lm)

ggplot(joined_data, aes(x=Children_Poverty, y=Mental_Unhealthy_Days))+ geom_point()+
  geom_smooth(method=lm)
