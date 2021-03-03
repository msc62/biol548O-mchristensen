##Lecture 6 Exercise
library(stringr)
install.packages("gapminder")
gDat <- gapminder::gapminder
str(gDat)

(strings <- c("a", "ab", "acb", "accb", "acccb", "accccb"))
grep("ac*b", strings, value = TRUE)
grep("ac+b", strings, value = TRUE)
grep("ac?b", strings, value = TRUE)
grep("ac{2}b", strings, value = TRUE)
grep("ac{2,}b", strings, value = TRUE)
grep("ac{2,3}b", strings, value = TRUE)


##Exercise 1

##Write a line of code to find all countries with ee in Gapminder using quantifiers. Add, commit, and push.

grep("ee", gDat$country, value = TRUE)

##Exercise 2 
#Write code to find all .R files in the main folder of your repository.
#Hint: use dir() to get a vector of all filenames
files <- list.files(pattern = "\\.R$")
print(files)

##Exercise 3

gsub("(.*i.*)(land$)|(.*t.*)(land$)", "\\1LAND", gDat$country)

##This the working one? 
gsub("(i|t)(.*)(land$)","\\1LAND", unique(gDat$country))

gsub("([it].*)land$","\\1LAND",unique(gDat$country))

gsub("land","LAND",grep("[it].*land$",unique(gDat$country),v=T))


##Exercise 4

##Find continents in Gapminder with letter o in it.
grep("o", unique(gDat$continent), value = TRUE)


