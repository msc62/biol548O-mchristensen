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
