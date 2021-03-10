##Lecture 8

#Exercise 1
w <- 10.2
x <- 1.3
y <- 2.8
z <- 17.5
colors <- c("red", "blue", "green")
masses <- c(45.2, 36.1, 27.8, 81.6, 42.4)
dna1 <- "attattaggaccaca"
dna2 <- "attattaggaacaca"


#TRUE OR FALSE
#w is greater than 10
if(w > 10){
  print("True")
}

#"green" is in colors
if("green" %in% colors) {
  print("True")
}

#x is greater than y
if(x > y){
  print("True")
}

#Each value in masses is greater than 40.
site = c('a', 'b', 'c', 'd')
state = c('FL', 'FL', 'GA', 'AL')
masses > 40



#Exercise 2
age_class = "sapling"
if(age_class == "sapling"){
  y <- 10
}


#Exercise 3

if(age_class == "sapling"){
  y <- 10
} else if (age_class == "seedling") {
  y<-5
}
y  

if(age_class == "sapling"){
  y <- 10
} else if (age_class == "seedling") {
  y<-5
} else { 
  y<-0}
y  


##Exercise 4

get_mass_from_length<- function(length, a, b){
  mass <- a * length ^ b
  return(mass)
}

get_mass_from_length_by_name<- function(length, name){
  if (name == "Stegosauria"){
    mass<- 10.95* length^2.64
  } else if (name == "Theropoda") {
    mass<- 0.73* length^3.63
  } else if (name == "Sauropoda") {
    mass<- 214.44* length^1.46
  } else {
    mass<- "NA"
  }
  return(mass)
}

get_mass_from_length_by_name(10, "Stegosauria")
get_mass_from_length_by_name(8, "Theropoda")
get_mass_from_length_by_name(12, "Sauropoda")
get_mass_from_length_by_name(13, "Anklyosauria")


##Exercise 5
#print the numbers 2 through 16.
for (i in 2:16){
  print(i)
}

#print the numbers 1 through 5 one line at a time multiplied by 3
for (i in 1:5){
  print(i*3)
}

##print out the name of each bird one line at a time.
birds = c('robin', 'woodpecker', 'blue jay', 'sparrow')
for (i in 1:length(birds)){
  print(birds[i])
}

#store one area for each radius.
radius <- c(1.3, 2.1, 3.5)
areas <- vector(mode = "numeric", length = length(radius))
for (i in 1:length(radius)){
  areas[i] <- pi * radius[i] ^ 2
}
areas
