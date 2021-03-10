##Lecture 7

calc_shrub_vol <- function(length, width, height) {
  volume <- length * width * height
  return(volume)
}

calc_shrub_vol(0.8, 1.6, 2.0)

shrub_vol <- calc_shrub_vol(0.8, 1.6, 2.0)

##Exercise 1

calc_lbs_to_g <- function(lbs){
  grams<- lbs*453.592
  return(grams)
}
calc_lbs_to_g(3.75)
grams_converted <- calc_lbs_to_g(3.75)


##Exercise 2
#The length of an organism is typically strongly correlated with its body mass. This is useful because it allows us to estimate the mass of an organism even if we only know its length. This relationship generally takes the form:
  
#  Mass = a * Lengthb

#Where the parameters a and b vary among groups. This allometric approach is regularly used to estimate the mass of dinosaurs since we cannot weigh something that is only preserved as bones.

#The following function estimates the mass of an organism in kg based on its length in meters for a particular set of parameter values, those for Theropoda (where a has been estimated as 0.73 and b has been estimated as 3.63; Seebacher 2001).

get_mass_from_length_theropoda <- function(length){
  mass <- 0.73 * length ^ 3.63
  return(mass)
}

get_mass_from_length_theropoda(16)

get_mass_from_length<- function(length, a, b){
  mass <- a * length ^ b
  return(mass)
}

get_mass_from_length(26, 214.44, 1.46)

##Exercise 3 
#Allowing a and b to be passed as arguments to get_mass_from_length() made the function more flexible, but for some types of dinosaurs we don't have specific values of a and b and so we have to use general values that can be applied to a number of different species.

#Set default values for a and b of a = 39.9 and b = 2.6 (the average values from Seebacher 2001).


get_mass_from_length<- function(length, a=39.9, b=2.6){
  mass <- a * length ^ b
  return(mass)
}

#estimate the mass of a Sauropoda (a = 214.44, b = 1.46) that is 22 m long
get_mass_from_length(22, 214.44, 1.46)

##estimate the mass of a dinosaur from an unknown taxonomic group that is 16m long
get_mass_from_length(16)



