# Correlation Matrix Class Oct-31-2023 Stats with R
getwd()
setwd("/Users/madhuryaj/R_STATS")

#.libPaths(c(.libPaths,"c:/Rpackages")) - for windows only

#load libraries

library(readxl)
#read data
data <- read_excel("kc_house_data.xlsx")

##what is the relationship between living area and sale price?
#Hypothesis 1. :+ve relationship b/w living area and sale price

#this is a expolatorary type analysis - understaning ##

#visualize the relationship of the above

library(ggplot2)

ggplot(data, aes(sqft_living, price))

ggplot(data, aes(x = sqft_living, y = price)) +
  geom_point() +
  geom_smooth(method = "lm") + labs (title = "Sqft Living vs Price",
                                     xlab = "Living in Sqft",
                                     ylab = "Price in $")

plot(data$sqft_living, data$price)

cor(data$sqft_living,
    data$price,
    use = "complete.obs",
    method = "spearman")

cor(data$sqft_living, data$price)

###########. -------------------- ############
install.packages("Hmisc")
library(Hmisc)

rcorr(data$sqft_living, data$price)

mdata <- as.matrix(data[3:6])
rcorr((mdata))
#P value is > 0.05 -> not condifident due to no change
#<0.05 is not due to chance -> there is a relationship , else no relationship

cor.test(x = data$sqft_living, y = data$price)


cor(data$sqft_living, data$price)

#measures of co-relation assignemnet step 4
subdata <- data[c(4:6, 11:12, 15)]
cor(subdata) #corelation matrix

#check which vales have good co-relation and use it then with less co-relation i.e above

#new library corrplot that give colours in viz (size and colour)
install.packages("corrplot")
library(corrplot)
#handout page 6

subdata <- data[c("sqft_living", "sqft_lot", "sqft_above", "price")]
cor <- cor(subdata)

cor_sort <- as.matrix(sort(cor[, "price"], decreasing = TRUE))
cor_sort

corrplot.mixed(cor, t1.col = "black", t1.pos = "lt")
