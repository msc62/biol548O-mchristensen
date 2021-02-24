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


#Exercise 2
##Create a new table of only species_id and date info
species_date<-select(surveys,year,month,day,species_id)
##Create a new table of with year, species_id and weight in kg
surveys2<-select(surveys, year, species_id, weight)
surveys3<-mutate(surveys2,weight2=weight/1000)
surveys4<-na.omit(surveys3)

##Select out only species "SH"
surveys_SH <- filter(surveys4, species_id=="SH")

#Get the total number of individual species
surveys_byspecies <- group_by(surveys, species_id)
surveys_byspeciescount <- summarize(surveys_byspecies, abundance = n())

#Get total number of individuals in each species id in each year
surveys_byspecieswithyear <- group_by(surveys, species_id, year)
surveys_byspeciescount <- summarize(surveys_byspecieswithyear, abundance = n())

#Determine mean mass of "D0" by year
surveys_D0 <- filter(surveys, species_id == "D0")
surveys_D0_by_year <- group_by(surveys_D0, year)
D0_weight_by_year <- summarize(surveys_D0_by_year,
                               avg_weight = mean(weight, na.rm = TRUE))


##Exercise 3

##create a new data frame with the year, species_id, and weight in kilograms of each individual, with no null weights.
surveys_species_weight_by_year <- surveys %>%
  group_by(species_id,year) %>%
  mutate(weight_kg = weight / 1000) %>%
  summarize(avg_weight = mean(weight_kg, na.rm = TRUE)) %>%
  na.omit()

## get the year, month, day, and species_id columns for all of the rows in the data frame where species_id is SH.
surveys_SH_by_date <- surveys %>%
  filter(species_id == "SH") %>%
  select(year, month, day, species_id) %>%
  na.omit()

## get a count of the number of individuals in each species ID.
surveys_byspeciespiped <- surveys %>%
  group_by(species_id) %>%
  summarize(abundance = n())

## get a count of the number of individuals in each species ID in each year.
surveys_byspecies_byyearpiped <- surveys %>%
  group_by(species_id,year) %>%
  summarize(abundance = n())

## mean mass of species DO in each year.
surveys_D0_mass_by_year <- surveys %>%
  filter(species_id == "D0") %>%
  group_by(year)%>%
  summarize(avg_weight = mean (weight, na.rm = TRUE))


