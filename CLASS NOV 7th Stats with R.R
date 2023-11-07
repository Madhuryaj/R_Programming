#CLASS NOV 7th Stats with R

library(tidyverse)
library(readxl)
library(dplyr)

install.packages("psych")
library(psych)  # good for descriptives

getwd()

house_data <-
  read_excel("/Users/madhuryaj/R_STATS/kc_house_data.xlsx")


#chech the distribution of data

hist(house_data$price, breaks = 100) #shows the values, here we can exculde the vales above 4e+06 values

#use this syntax when we use a function in multiple packages / function ::
house_data <- house_data %>% dplyr::filter(price < 4000000)
hist(house_data$price, breaks = 100, probability = TRUE)
lines(density(house_data$price), col = 2)

#ggplot2

ggplot(house_data, mapping = aes(price)) + geom_histogram(aes(y = ..density..), fill =
                                                            "red") + geom_density(col = "blue")

#or

ggplot(data, mapping = aes(price)) + geom_density()


#using psych - descriptive stats

describe(house_data$price) # gives the mean, sd, min max, skew , se-standard error etc

describe(house_data)

describeBy(house_data$price, group = house_data$waterfront) # use in assignement - sale price by quality

#to check if data is normally distrubuited
qqnorm(house_data$price)
qqline(house_data$price) # if the curve is near or on line then its like data is normally distrubution

#probablity cal in R
? pnorm

1 - (pnorm(-1, mean = 0, sd = 1)) * 2 # shows 68% data falles in distrubution of + or - 2

#class exercise ( page 5 on papaer)

#given meam = 494, sd=100 , find probablity for 700

pnorm(q = 700, mean = 494, sd = 100) # this is area to the right
# to get actual value do 1- pnorm () of the above
1 - pnorm(q = 700, mean = 494, sd = 100)


# using the Central theorem
