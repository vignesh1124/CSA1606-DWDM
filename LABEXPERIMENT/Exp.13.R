prices <- c(1, 1, 5, 5, 5, 5, 5, 8, 8, 10, 10, 10, 10, 12, 14, 14, 14, 15, 15, 15, 15, 15, 15, 18, 18, 18, 18, 18, 18, 18, 18, 18, 20, 20, 20, 20, 20, 20, 20, 21, 21, 21, 21, 25, 25, 25, 25, 25, 28, 28, 30, 30, 30)

bins <- split(prices, ceiling(seq_along(prices) / 3))

bin_means <- lapply(bins, function(x) rep(mean(x), length(x)))

bin_boundaries <- lapply(bins, function(x) {
  lower <- min(x)
  upper <- max(x)
  sapply(x, function(v) if (abs(v - lower) <= abs(v - upper)) lower else upper)
})

cat("Equal-Frequency Bins:\n")
print(bins)

cat("\nSmoothing by Bin Means:\n")
print(unlist(bin_means))

cat("\nSmoothing by Bin Boundaries:\n")
print(unlist(bin_boundaries))

hist(prices, main = "Histogram of All Electronics Prices", xlab = "Price", ylab = "Frequency")
