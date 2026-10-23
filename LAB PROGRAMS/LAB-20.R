Age <- c(22, 25, 28, 32, 35, 38, 42, 45,
         48, 52, 55, 58, 62, 65, 68)

BloodPressure <- c(70, 72, 75, 76, 78, 80, 82, 84,
                   85, 86, 88, 90, 92, 94, 96)
data <- data.frame(Age, BloodPressure)
print(data)
plot(Age, BloodPressure,
     main = "Blood Pressure vs Age",
     xlab = "Age",
     ylab = "Blood Pressure",
     col = "blue",
     pch = 19)
AgeGroup <- cut(
  Age,
  breaks = c(0, 30, 40, 50, 60, Inf),
  labels = c("Below 30", "31-40", "41-50",
             "51-60", "Above 60")
)
avg_bp <- aggregate(
  BloodPressure,
  by = list(AgeGroup = AgeGroup),
  FUN = mean
)
print(avg_bp)
barplot(
  avg_bp$x,
  names.arg = avg_bp$AgeGroup,
  main = "Average Blood Pressure by Age Group",
  xlab = "Age Group",
  ylab = "Average Blood Pressure",
  col = "lightblue"
)