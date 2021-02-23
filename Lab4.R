##Load in packages
library(tidyverse)
##Read in Data
surveys <- read_csv("data/surveys.csv")
##select a subset of table
select(surveys, year, month, day)
##select only surveys with species ID "DS"
filter(surveys, species_id == "DS")
##New column with calculated values
mutate(surveys, hindfoot_length_cm = hindfoot_length / 10)
##New table with new columb
surveys_plus <- mutate(surveys,
                       hindfoot_length_cm = hindfoot_length / 10)
##Overwrite original table with new table that has new columns
surveys <- mutate(surveys,
                  hindfoot_length_cm = hindfoot_length / 10)

#Exercise 1
##Read in Shrub data
shrubs <- read_csv("data/shrub-volume-data.csv")
##Check column names
names(shrubs)
##Check structure of data
str(shrubs)
##Select data from length column
shrubs_length <- select(shrubs,length)
shrubs_length
##Select data from site and experience column
shrubs_siteexp <- select(shrubs, site, experiment)
##Filter all plants > 5m 
shrubs_5m <- filter(shrubs, height > "5")
#Calculate volume, add as column and print to new table
shrub_data_w_vols <- mutate(shrubs, volume=length*width*height)


