#Built in dataset in R
#load data
library(tidyverse)
data(mtcars)
view(mtcars)

head(mtcars)
tail(mtcars)
nrow(mtcars) #number of rows
ncol(mtcars) #no of col

summary(mtcars)
plot(mtcars$mpg)
hist(mtcars$mpg)
