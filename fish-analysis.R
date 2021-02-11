##This is a script for comparing fish length and scale size. Data is imported from [Gaeta_etal_CLC_data.csv](https://lter.limnology.wisc.edu/sites/default/files/Gaeta_etal_CLC_data.csv). The fish lengths are provided in a unit of measure and this code creates a new column for size categories based on size. 

fish_data = read.csv("data/Gaeta_etal_CLC_data_1.csv")
library(dplyr)

fish_data_cat = fish_data %>% 
  mutate(length_cat = ifelse(length > 300, "big", "small"))