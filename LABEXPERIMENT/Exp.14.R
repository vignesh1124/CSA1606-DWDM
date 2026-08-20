class_A <- c(76, 35, 47, 64, 95, 66, 89, 36, 84)
class_B <- c(51, 56, 84, 60, 59, 70, 63, 66, 50)

cat("Class A Mean =", mean(class_A), "\n")
cat("Class A Median =", median(class_A), "\n")
cat("Class A Range =", diff(range(class_A)), "\n\n")

cat("Class B Mean =", mean(class_B), "\n")
cat("Class B Median =", median(class_B), "\n")
cat("Class B Range =", diff(range(class_B)), "\n")

boxplot(class_A, class_B, names = c("Class A", "Class B"), main = "Class A vs Class B", ylab = "Marks")
