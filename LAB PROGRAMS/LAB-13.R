x <- c(18,18,18,20,20,20,20,20,20,20,
       21,21,21,21,25,25,25,25,25,28,
       28,30,30,30)
x <- sort(x)
bins <- split(x, rep(1:3, each = 8))
print(bins)
means <- lapply(bins, function(b) rep(mean(b), length(b)))
print(means)
boundaries <- lapply(bins, function(b) {
  low <- min(b)
  high <- max(b)
  sapply(b, function(v) {
    if (abs(v-low) <= abs(v-high)) low else high
  })
})
print(boundaries)
hist(x, main="Histogram of Data",
     xlab="Values", ylab="Frequency",
     col="lightblue", breaks=3)