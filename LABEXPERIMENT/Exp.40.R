data <- c(100, 70, 60, 90, 90)

min_value <- min(data)
max_value <- max(data)

min_max <- (data - min_value) / (max_value - min_value)

z_score <- (data - mean(data)) / sd(data)

mean_absolute_deviation <- mean(abs(data - mean(data)))
z_score_mad <- (data - mean(data)) / mean_absolute_deviation

decimal_scaling <- data / 100

cat("Min-Max Normalization:\n")
print(min_max)

cat("\nZ-Score Normalization:\n")
print(z_score)

cat("\nZ-Score using Mean Absolute Deviation:\n")
print(z_score_mad)

cat("\nDecimal Scaling:\n")
print(decimal_scaling)
