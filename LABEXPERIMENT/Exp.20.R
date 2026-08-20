points <- c(12, 15, 18, 20, 22, 24, 25, 27, 30, 32, 35, 50)

boxplot(points,
        main = "Boxplot of Players' Points",
        ylab = "Points Scored",
        col = "lightgray")

outliers <- boxplot.stats(points)$out

cat("Outlier values:\n")
print(outliers)
