data(mtcars)

plot(mtcars$mpg, type = "o", main = "Multiple Lines for mpg and qsec", xlab = "Observation", ylab = "Value")
lines(mtcars$qsec, type = "o")
legend("topright", legend = c("mpg", "qsec"), lty = 1, pch = 1)
