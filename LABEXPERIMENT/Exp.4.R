data <- c(11,13,13,15,15,16,19,20,20,20,21,21,
          22,23,24,30,40,45,45,45,71,72,73,75)

bins <- split(data, rep(1:3, each = 8))

bin_mean <- lapply(bins, function(x) rep(mean(x), length(x)))

bin_median <- lapply(bins, function(x) rep(median(x), length(x)))

bin_boundary <- lapply(bins, function(x) {
  lower <- min(x)
  upper <- max(x)
  sapply(x, function(v) {
    if (abs(v - lower) <= abs(v - upper)) lower else upper
  })
})

cat("Original Data:\n")
print(data)

cat("\nSmoothing by Bin Mean:\n")
print(unlist(bin_mean))

cat("\nSmoothing by Bin Median:\n")
print(unlist(bin_median))

cat("\nSmoothing by Bin Boundaries:\n")
print(unlist(bin_boundary))