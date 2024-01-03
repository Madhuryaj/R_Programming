## Logistic Regression - churn prediction of telco data Dec 5th 2023##
getwd()
setwd("/Users/madhuryaj/Downloads/")

library(readxl)
library(caret)
library(dplyr)

telco_data <- read_excel("telco_churn.xlsx")

telco_data <- telco_data %>% mutate_if(is.character, as.factor)

str(telco_data)

#split data
set.seed(1234)
index <-
  createDataPartition(telco_data$Churn,
                      p = 0.8,
                      list = FALSE,
                      times = 1)


train <- telco_data[index,]
test <- telco_data[-index,]

# logestic model

#formula

#data$churn<-data$Churn

formula <- Churn ~ MonthlyCharges + tenure

#model 1

model_1 <- glm(formula = formula,
               data = train,
               family = "binomial")

summary(model_1)
#plot(telco_data$Churn,telco_data$MonthlyCharges)


LogModel <- model_1
logisticPseudoR2s <- function(LogModel) {
  dev <- LogModel$deviance
  nullDev <- LogModel$null.deviance
  modelN <- length(LogModel$fitted.values)
  R.l <- 1 - dev / nullDev
  R.cs <- 1 - exp (-(nullDev - dev) / modelN)
  R.n <- R.cs / (1 - (exp (-(nullDev / modelN))))
  cat("Pseudo R^2 for logistic regression\n")
  cat("Hosmer and Lemeshow R^2 ", round(R.l, 3), "\n")
  cat("Cox and Snell R^2 ", round(R.cs, 3), "\n")
  cat("Nagelkerke R^2 ", round(R.n, 3), "\n")
}
logisticPseudoR2s(model_1)

# predict on test data
model_1_Predictions <-
  predict(model_1, newdata = test, type = "response")

test$pred <- model_1_Predictions

# Assuming test$pred is the column with predictions
test$prediction <- as.factor(ifelse(test$pred > 0.5, "Yes", "No"))
postResample(test$prediction, test$Churn)
confusionMatrix(data = test$prediction, test$Churn)


# assumption checks
library(car)

vif(model_1)

sum(cooks.distance(model_1) > 1)

# is it a logistic relationship

train$chargeLog <- log(train$MonthlyCharges) * train$MonthlyCharges
train$tenureLog <- log(train$tenure) * train$tenure

formula_2 <- Churn ~ MonthlyCharges + tenure + chargeLog + tenureLog

#model 2 # only for assumption check only - dont use for actual predictions :)

model_2 <- glm(formula = formula_2,
               data = train,
               family = "binomial")

summary(model_2)
