pencils <- c(9, 25, 23, 12, 11, 6, 7, 8, 9, 10)

mean_value <- mean(pencils)
median_value <- median(pencils)

frequency <- table(pencils)
mode_value <- as.numeric(names(frequency)[frequency == max(frequency)])

cat("Mean =", mean_value, "\n")
cat("Median =", median_value, "\n")
cat("Mode =", mode_value, "\n")