data <- c(200, 300, 400, 600, 1000)

min_value <- min(data)
max_value <- max(data)

min_max <- (data - min_value) / (max_value - min_value)

mean_value <- mean(data)
sd_value <- sd(data)

z_score <- (data - mean_value) / sd_value

cat("Original Data:\n")
print(data)

cat("\nMin-Max Normalization:\n")
print(min_max)

cat("\nZ-Score Normalization:\n")
print(z_score)