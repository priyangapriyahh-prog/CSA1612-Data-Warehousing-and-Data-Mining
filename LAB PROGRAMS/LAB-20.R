scores <- c(10,12,15,18,20,22,24,25,27,30,80)
boxplot(scores,
        main="Tennis Players' Scores",
        ylab="Points Scored",
        col="lightblue")
print(boxplot.stats(scores)$out)