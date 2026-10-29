diabetes <- read.csv(file.choose())
head(diabetes)
names(diabetes)
diabetes <- na.omit(diabetes)
linear_model <- lm(Outcome ~ Age, data = diabetes)
print(summary(linear_model))
plot(diabetes$Age, diabetes$Outcome,
     main = "Diabetes Trend by Age",
     xlab = "Age",
     ylab = "Diabetes Outcome (0 = No, 1 = Yes)",
     pch = 19)
abline(linear_model, col = "red", lwd = 2)
multiple_model <- lm(
  Outcome ~ Age + Glucose + BMI + BloodPressure,
  data = diabetes
)
print(summary(multiple_model))
cat("Linear Regression R-squared:",
    summary(linear_model)$r.squared, "\n")
cat("Multiple Regression R-squared:",
    summary(multiple_model)$r.squared, "\n")