data(water, package="MASS")
plot(water$hardness, water$mortality,
     main="Mortality vs Hardness",
     xlab="Hardness", ylab="Mortality",
     pch=19, col="blue")
model <- lm(mortality ~ hardness, data=water)
abline(model, col="red", lwd=2)
print(summary(model))
predict(model,
        newdata=data.frame(hardness=88))