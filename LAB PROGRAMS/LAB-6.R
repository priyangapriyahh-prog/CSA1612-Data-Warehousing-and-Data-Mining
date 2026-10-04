age <- c(23,23,27,27,39,41,47,49,50,
         52,54,54,56,57,58,58,60,61)
x <- 35
min_age <- min(age)
max_age <- max(age)
minmax <- (x - min_age) / (max_age - min_age)
minmax
mean_age <- mean(age)
sd_age <- 12.94
zscore <- (x - mean_age) / sd_age
zscore
decimal <- x / 100
decimal