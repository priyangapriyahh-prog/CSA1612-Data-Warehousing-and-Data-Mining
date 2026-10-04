marks <- c(55,60,71,63,55,65,50,55,58,
           59,61,63,65,67,71,72,75)
sorted_marks <- sort(marks)
print("Sorted Marks")
print(sorted_marks)
bin1 <- sorted_marks[1:6]
bin2 <- sorted_marks[7:12]
bin3 <- sorted_marks[13:17]
print("Equal-Frequency Bins")
print(bin1)
print(bin2)
print(bin3)
hist(marks,
     main="Histogram of Marks",
     xlab="Marks",
     ylab="Frequency")
min_marks <- min(marks)
max_marks <- max(marks)
width <- (max_marks - min_marks) / 3
print("Minimum")
print(min_marks)
print("Maximum")
print(max_marks)
print("Bin Width")
print(width)
equal_width_bins <- cut(marks,
                        breaks=3,
                        include.lowest=TRUE)
print("Equal-Width Bins")
print(equal_width_bins)