customers <- data.frame(
  CustomerID = c(1,2,3,4,5,6,7,8,9,10),
  Age = c(19,21,25,30,35,40,45,50,55,60),
  Gender = c("Male","Female","Female","Male","Female","Male","Female","Male","Female","Male"),
  AnnualIncome = c(15000,16000,17000,35000,40000,45000,60000,65000,70000,80000),
  SpendingScore = c(39,81,6,77,40,76,94,3,72,14)
)

set.seed(123)
clusters <- kmeans(customers[, c("AnnualIncome", "SpendingScore")], centers = 5)

customers$Cluster <- clusters$cluster

print(customers)

plot(customers$AnnualIncome, customers$SpendingScore,
     col = customers$Cluster,
     pch = 19,
     main = "Customer Segmentation",
     xlab = "Annual Income",
     ylab = "Spending Score")

points(clusters$centers[,1], clusters$centers[,2], pch = 8, cex = 2)
