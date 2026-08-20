age <- 35

min_age <- 23
max_age <- 61

min_max <- (age - min_age) / (max_age - min_age)

mean_age <- 46
sd_age <- 12.94

z_score <- (age - mean_age) / sd_age

decimal_scaling <- age / 100

cat("Min-Max Normalization =", min_max, "\n")
cat("Z-Score Normalization =", z_score, "\n")
cat("Decimal Scaling =", decimal_scaling, "\n")