# DWDM Experiment 2
# Statistical Measures of Age Data

age <- c(13, 15, 16, 16, 19, 20, 20, 21, 22, 22,
         25, 25, 25, 25, 30, 33, 33, 35, 35, 35,
         35, 36, 40, 45, 46, 52, 70)

# Mean
mean_age <- mean(age)

# Median
median_age <- median(age)

# Mode
frequency <- table(age)
mode_age <- as.numeric(names(frequency)[frequency == max(frequency)])

# Midrange
midrange_age <- (min(age) + max(age)) / 2

# First quartile (Q1)
Q1 <- quantile(age, 0.25)

# Third quartile (Q3)
Q3 <- quantile(age, 0.75)

# Display results
cat("Mean =", mean_age, "\n")
cat("Median =", median_age, "\n")
cat("Mode =", mode_age, "\n")
cat("Modality = Unimodal\n")
cat("Midrange =", midrange_age, "\n")
cat("Q1 =", Q1, "\n")
cat("Q3 =", Q3, "\n")