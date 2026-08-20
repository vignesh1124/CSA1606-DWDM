data <- read.csv("diabetes.csv")
plot(data$Age, data$BloodPressure, main = "Blood Pressure vs Age", xlab = "Age", ylab = "Blood Pressure", pch = 19)
barplot(table(cut(data$Age, breaks = 5)), main = "Age Group Distribution", xlab = "Age Group", ylab = "Frequency")
