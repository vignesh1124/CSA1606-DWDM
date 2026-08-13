age <- c(23, 23, 27, 27, 39, 41, 47, 49, 50,
         52, 54, 56, 57, 58, 58, 60, 61)

fat <- c(9.5, 26.5, 7.8, 17.8, 31.4, 25.9, 27.4, 27.2, 31.2,
         34.6, 42.5, 28.8, 33.4, 30.2, 34.1, 32.9, 41.2, 35.7)

cat("Age Mean =", mean(age), "\n")
cat("Age Median =", median(age), "\n")
cat("Age Standard Deviation =", sd(age), "\n\n")

cat("Fat Mean =", mean(fat), "\n")
cat("Fat Median =", median(fat), "\n")
cat("Fat Standard Deviation =", sd(fat), "\n")

boxplot(age, fat[1:length(age)],
        names = c("Age", "Fat"),
        main = "Boxplots of Age and Body Fat")

plot(age, fat[1:length(age)],
     main = "Scatter Plot of Age vs Body Fat",
     xlab = "Age",
     ylab = "% Fat",
     pch = 19)

qqplot(age, fat[1:length(age)],
       main = "Q-Q Plot",
       xlab = "Age",
       ylab = "% Fat")
abline(0, 1)