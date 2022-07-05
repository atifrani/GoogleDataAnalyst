# Take 2 x Vecotrs and Join to create Data Frame

library(tidyverse)

names <- c("Maxi", "Eva", "Harry", "Cookie")
ages <- c(50, 15, 5, 0.5)

peoples <- data.frame(names, ages)

head(peoples)
