data <- c(200, 300, 400, 600, 1000)
minmax <- (data - min(data)) / (max(data) - min(data))
minmax
zscore <- (data - mean(data)) / sd(data)
zscore