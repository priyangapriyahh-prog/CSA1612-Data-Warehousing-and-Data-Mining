data <- data.frame(
  age = c("<=30", "<=30", "31...40", ">40", ">40", ">40",
          "31...40", "<=30", "<=30", ">40", "<=30",
          "31...40", "31...40", ">40"),
  income = c("high", "high", "high", "medium", "low", "low",
             "low", "medium", "low", "medium", "medium",
             "medium", "high", "medium"),
  student = c("no", "no", "no", "no", "yes", "yes", "yes",
              "no", "yes", "yes", "yes", "no", "yes", "no"),
  credit_rating = c("fair", "excellent", "fair", "fair", "fair",
                    "excellent", "excellent", "fair", "fair", "fair",
                    "excellent", "excellent", "fair", "excellent"),
  buys_computer = c("no", "no", "yes", "yes", "yes", "no", "yes",
                    "no", "yes", "yes", "yes", "yes", "yes", "no")
)
print(data)
train <- data[1:10, ]
test <- data[11:14, ]
cat("\nTraining Data:\n")
print(train)
cat("\nTesting Data:\n")
print(test)
library(e1071)
bayes_model <- naiveBayes(buys_computer ~ ., data = train)
bayes_pred <- predict(bayes_model, test)
cat("\nNAIVE BAYES RESULTS:\n")
print(data.frame(
  Actual = test$buys_computer,
  Predicted = bayes_pred
))
bayes_accuracy <- mean(bayes_pred == test$buys_computer) * 100
cat("Naive Bayes Accuracy:", bayes_accuracy, "%\n")
library(rpart)
library(rpart.plot)
tree_model <- rpart(
  buys_computer ~ .,
  data = train,
  method = "class",
  control = rpart.control(
    cp = 0,
    minsplit = 2,
    minbucket = 1,
    maxdepth = 5
  )
)
rpart.plot(
  tree_model,
  type = 3,
  extra = 104,
  fallen.leaves = TRUE,
  main = "Decision Tree for Buys Computer"
)
tree_pred <- predict(tree_model, test, type = "class")
cat("\nDECISION TREE RESULTS:\n")
print(data.frame(
  Actual = test$buys_computer,
  Predicted = tree_pred
))
tree_accuracy <- mean(tree_pred == test$buys_computer) * 100
cat("Decision Tree Accuracy:", tree_accuracy, "%\n")