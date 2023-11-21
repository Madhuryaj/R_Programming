#21 st nov 2023
#stats with R
library(readxl)
library(caret) #ML Workflows
getwd()
house_data <-
  read_excel("/Users/madhuryaj/R_STATS/kc_house_data.xlsx")
xy_ab <-
  read_excel("/Users/madhuryaj/R_STATS/kc_house_data.xlsx")

house_data$condition <- as.factor(house_data$condition)

house_data$waterfront <- as.factor(house_data$waterfront)

set.seed(12345)
index <-
  createDataPartition(house_data$price, p = 0.8, list = FALSE)

train <- house_data[index, ]
test <- house_data[-index, ]

#for 1st model
formula_1 <- price ~ sqft_living + condition
formula_1
model_1 <- lm(formula = formula_1, data = train)
summary(model_1)


#for 2nd model
formula_2 <- price ~ sqft_living + condition + waterfront
formula_2
model_2 <- lm(formula = formula_2, data = train)
summary(model_2)

predictions <- predict(model_1, test)
predictions
test$prediction <- predictions #check test sheet

postResample(predictions, test$price)

plot(model_1) #fitter is the predicted

cooks.distance(model)
sum(cooks.distance(model_1) > 2)

install.packages("car")
library(car)
vif(model_1)

library(lmtest)
dwtest(model_1)
