marks <- c(55, 60, 71, 63, 55, 65, 50, 55, 58, 59, 61, 63, 65, 67, 71, 72, 75)

sorted_marks <- sort(marks)

equal_frequency <- split(sorted_marks, rep(1:3, each = ceiling(length(marks)/3), length.out = length(marks)))

breaks <- seq(min(marks), max(marks), length.out = 4)
equal_width <- cut(marks, breaks = breaks, include.lowest = TRUE)

cat("Equal-Frequency Bins:\n")
print(equal_frequency)

cat("\nEqual-Width Bins:\n")
print(equal_width)

par(mfrow = c(1, 2))
hist(marks, breaks = 3, main = "Equal-Frequency", xlab = "Marks")
hist(marks, breaks = breaks, main = "Equal-Width", xlab = "Marks")
par(mfrow = c(1, 1))

set.seed(123)
clusters <- kmeans(matrix(marks), centers = 3)
cat("\nClustering Groups:\n")
print(clusters$cluster)
