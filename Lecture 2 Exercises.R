library(tidyverse)
fship <- read.csv(file.path("data", "The_Fellowship_Of_The_Ring.csv"))
ttow <- read.csv(file.path("data", "The_Two_Towers.csv"))
rking <- read.csv(file.path("data", "The_Return_Of_The_King.csv"))
rking

lotr_untidy <- bind_rows(fship, ttow, rking)
str(lotr_untidy)

lotr_untidy


lotr_untidy <- bind_rows(fship, ttow, rking)
str(lotr_untidy)

lotr_untidy


lotr_tidy <-
  gather(lotr_untidy, key = 'Gender', value = 'Words', Female, Male)
lotr_tidy


lotr_tidy <-
  pivot_longer(lotr_untidy, cols=c(Female, Male), names_to = 'Gender', values_to = 'Words')
lotr_tidy <- arrange(lotr_tidy, Gender)

write_csv(lotr_tidy, file = file.path("data", "lotr_tidy.csv"))

##Exercise 2

Male<- read.csv(file.path("data", "Female.csv"))
Female<-read.csv(file.path("data", "Male.csv"))

MF_untidy <- bind_rows(Male, Female)
str(MF_untidy)

MF_untidy

MF_tidy <-
  gather(MF_untidy, key = 'Gender', value = 'Words', Female, Male)
MF_tidy

lotr_tidy %>% 
  count(Gender, Race, wt = Words)

(by_race_film <- lotr_tidy %>% 
    group_by(Film, Race) %>% 
    summarize(Words = sum(Words)))

p <- ggplot(by_race_film, aes(x = Film, y = Words, fill = Race))
p + geom_bar(stat = "identity", position = "dodge") +
  coord_flip() + guides(fill = guide_legend(reverse = TRUE))


lotr_tidy <- read_csv(file.path("data", "lotr_tidy.csv"))

lotr_tidy

lotr_tidy %>% 
  spread(key = Race, value = Words)

lotr_tidy %>% 
  spread(key = Gender, value = Words)

lotr_tidy %>% 
  unite(Race_Gender, Race, Gender) %>% 
  spread(key = Race_Gender, value = Words)

lotr_messy<-lotr_tidy%>%
  unite(Race_Gender, Race, Gender)%>%
  
  pivot_wider(names_from = Race_Gender, values_from = Words)
lotr_messy

write_csv(lotr_messy, file = file.path("data", "lotr_untidy_pivot.csv"))
