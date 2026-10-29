install.packages("arules")  
library(arules)
items <- list(
  c("a","d","e"),
  c("a","b","c","e"),
  c("a","b","d","e"),
  c("a","c","d","e"),
  c("b","c","e"),
  c("b","d","e"),
  c("c","d"),
  c("a","b","c"),
  c("a","d","e"),
  c("a","b","e")
)
trans <- as(items, "transactions")
inspect(trans)
freq <- apriori(
  trans,
  parameter = list(
    support = 0.3,
    minlen = 1,
    target = "frequent itemsets"
  )
)
inspect(freq)
rules <- apriori(
  trans,
  parameter = list(
    support = 0.3,
    confidence = 0.5,
    minlen = 2,
    target = "rules"
  )
)
inspect(rules)