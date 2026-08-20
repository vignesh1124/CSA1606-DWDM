# DWDM Experiment 1
# Approximate Median for Grouped Data

age <- c("1-5", "5-15", "15-20", "20-50", "50-80", "80-110")
frequency <- c(200, 450, 300, 1500, 700, 44)

# Total frequency
N <- sum(frequency)

# Median position
median_position <- N / 2

# Cumulative frequency
cumulative_frequency <- cumsum(frequency)

# Find median class
median_class <- which(cumulative_frequency >= median_position)[1]

# Lower limit of median class
L <- c(1, 5, 15, 20, 50, 80)[median_class]

# Frequency of median class
f <- frequency[median_class]

# Cumulative frequency before median class
CF <- ifelse(median_class == 1, 0,
             cumulative_frequency[median_class - 1])

# Class width
h <- c(4, 10, 5, 30, 30, 30)[median_class]

# Approximate median
median_value <- L + ((median_position - CF) / f) * h

cat("Total frequency =", N, "\n")
cat("Median position =", median_position, "\n")
cat("Median class =", age[median_class], "\n")
cat("Approximate median =", median_value, "\n")
median_value <- L + ((median_position - CF) / f) * h

cat("Approximate median =", median_value, "\n")