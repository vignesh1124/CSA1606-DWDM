marks <- c(55, 60, 71, 63, 55, 65, 50, 55, 58, 59, 61, 63, 65, 67, 71, 72, 75)

n <- length(marks)
bin_size <- n / 3
bins_equal_frequency <- split(sort(marks), rep(1:3, each = ceiling(bin_size), length.out = n))

min_value <- min(marks)
max_value <- max(marks)
width <- (max_value - min_value) / 3
breaks <- seq(min_value, max_value, length.out = 4)
bins_equal_width <- cut(marks, breaks = breaks, include.lowest = TRUE)

cat("Equal-Frequency Bins:\n")
print(bins_equal_frequency)

cat("\nEqual-Width Bins:\n")
print(bins_equal_width)

par(mfrow = c(1, 2))
hist(marks, breaks = 3, main = "Equal-Frequency Partitioning", xlab = "Marks")
hist(marks, breaks = breaks, main = "Equal-Width Partitioning", xlab = "Marks")
par(mfrow = c(1, 1))
