data(mtcars)
boxplot(mpg ~ cyl, data=mtcars,
        main="MPG by Number of Cylinders",
        xlab="Cylinders",
        ylab="Miles per Gallon",
        col=c("lightblue","lightgreen","lightpink"))