age <- c("1-5", "5-15", "15-20", "20-50", "50-80", "80-110")
frequency <- c(200, 450, 300, 1500, 700, 44)
total <- sum(frequency)
total
cumulative <- cumsum(frequency)
cumulative
total / 2
L <- 20
CF <- 950
f <- 1500
h <- 30
median <- L + ((total/2 - CF) / f) * h
median