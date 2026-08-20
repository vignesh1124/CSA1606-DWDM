person <- c("Gopu","Babu","Baby","Gopal","Krishna","Jai","Dev","Malini","Hema","Anu")
vegetarian <- c("yes","yes","yes","no","yes","no","no","yes","yes","yes")

counts <- table(vegetarian)

cat("Vegetarian =", counts["yes"], "\n")
cat("Non-Vegetarian =", counts["no"], "\n")

if (counts["yes"] > counts["no"]) {
  cat("Greater count = Vegetarian\n")
} else if (counts["no"] > counts["yes"]) {
  cat("Greater count = Non-Vegetarian\n")
} else {
  cat("Both counts are equal\n")
}

barplot(counts,
        main = "Vegetarian vs Non-Vegetarian",
        xlab = "Type",
        ylab = "Count")
