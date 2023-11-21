#Class Nov 14th , 2023 - T Test and break test and train data
df <- read.csv("https://goo.gl/j6lRXD")

table(df$treatment, df$improvement)

chisq.test(df$treatment, df$improvement, correct = FALSE)


# T test

library(readxl)
kc_house_data <- read_excel("kc_house_data.xlsx")

kc_house_data$waterfront <- as.factor(kc_house_data$waterfront)

t.test(data = kc_house_data, price ~ waterfront , conf.level = 0.95)


#splitting the data## we can use caret library for splittling data, evanluate performance models and training and tuning the models
install.packages("caret")
library(caret)
set.seed(12998036)
index <-
  createDataPartition(kc_house_data$price, p = 0.8, list = FALSE)

train <- data[index, ] # 80 % of the data
test <- data[-index, ] #20-% of the data

formula <- price ~ sqft_living

model <- lm(formula = formula, data = train)
