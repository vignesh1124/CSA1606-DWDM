data(water, package = "MASS")

plot(water$hardness, water$mortality,
     main = "Mortality vs Hardness",
     xlab = "Hardness",
     ylab = "Mortality",
     pch = 19)

model <- lm(mortality ~ hardness, data = water)

abline(model)

prediction <- predict(model, newdata = data.frame(hardness = 88))

cat("Predicted mortality for hardness = 88:", prediction, "\n")
cat("\nLinear Regression Summary:\n")
print(summary(model))
