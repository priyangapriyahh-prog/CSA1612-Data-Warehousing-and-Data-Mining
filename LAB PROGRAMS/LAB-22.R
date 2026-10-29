items <- list(
  c("Milk", "Beer", "Diapers"),
  c("Bread", "Butter", "Milk"),
  c("Milk", "Diapers", "Cookies"),
  c("Bread", "Butter", "Cookies"),
  c("Beer", "Cookies", "Diapers"),
  c("Milk", "Diapers", "Bread", "Butter"),
  c("Bread", "Diapers"),
  c("Beer", "Diapers"),
  c("Milk", "Diapers", "Bread", "Butter"),
  c("Beer", "Cookies")
)
unique_items <- unique(unlist(items))
d <- length(unique_items)
cat("Unique items:", d, "\n")
cat("Items:", unique_items, "\n")
rules <- 3^d - 2^(d + 1) + 1
cat("Maximum association rules:", rules, "\n")
max_size <- max(sapply(items, function(x) length(unique(x))))
cat("Maximum size of frequent itemsets:", max_size, "\n")