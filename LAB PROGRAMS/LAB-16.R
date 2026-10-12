data("AirPassengers")
hist(AirPassengers,
     breaks=seq(100,700,by=150),
     main="Histogram of AirPassengers",
     xlab="Passengers",
     ylab="Frequency",
     col="lightblue",
     xlim=c(100,700),
     right=FALSE)