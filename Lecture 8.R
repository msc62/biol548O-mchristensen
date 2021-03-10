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





