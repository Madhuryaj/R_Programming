#29 st nov 2023
#stats with R
library(readxl)
library(caret) #ML Workflows
getwd()
house_data <-
  read_excel("/Users/madhuryaj/R_STATS/kc_house_data.xlsx")


#pre processing

#split data
set.seed(1234)
#p is probablity of train data set
index <-
  createDataPartition(house_data$price,
                      times = 1,
                      p = 0.7,
                      list = FALSE)

train <- house_data[index,]
test <- house_data[-index,]

##build regression model

formula <- price ~ sqft_living + floors

model <- lm(formula = formula, data = train)

summary(model)


#model 2

formula_2 <- price ~ sqft_lot + floors
model_2 <- lm(formula = formula_2, data = train)
summary(model_2)
####

## check accuracy for model_1 - check the assumptions ( for 6 on table in assumption checking - aslo in hand out)

head(resid(model))

resid(model)
train$resid <- resid(model)
train$predict <- predict(model, train)
view(train)

#put the residuals vs fitter chart in assignment

plot(model) # gives 4-5 chart o/p

sum(cooks.distance(model) > 1)

install.packages("car")
library("car")
vif(model)

library(lmtest)
dwtest(model)

#now check on the test data

predictions <- predict(model, test)
predictions
library("caret")
postResample(predictions, test$price)

test$predictions


#### model 3

formula_3 <- price ~ sqft_living + floors + bathrooms
model_3 <- lm(formula = formula_3, data = train)
summary(model_3)

## 4th model

formula_4 <- price ~ sqft_living + floors + bathrooms + bedrooms
model_4 <- lm(formula = formula_4, data = train)
summary(model_4)
vif(model_4)

#evaluate accuracy of the test data
#comparing the digffrent models
install.packages("stargazer")
library(stargazer)

stargazer(model,model_2,model_3,model_4,type="html",out="model.html")
