data <- read.csv("diabetes.csv")

model_linear <- lm(BloodPressure ~ Age, data = data)

model_multiple <- lm(BloodPressure ~ Age + Glucose + BMI, data = data)

cat("Linear Regression:\n")
print(summary(model_linear))

cat("\nMultiple Regression:\n")
print(summary(model_multiple))

plot(data$Age, data$BloodPressure, main = "Diabetes Trend by Age", xlab = "Age", ylab = "Blood Pressure", pch = 19)
abline(model_linear)
