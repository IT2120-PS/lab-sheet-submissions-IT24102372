
setwd("C:\\Users\\Hp\\Desktop\\Lab_06_IT24102372")


cat("=== QUESTION 1 ===\n")
cat("i. Distribution of X: Binomial with n=50, p=0.85\n")


prob_at_least_47 <- 1 - pbinom(46, 50, 0.85)
cat("ii. Probability that at least 47 students passed:", round(prob_at_least_47, 4), "\n\n")


cat("=== QUESTION 2 ===\n")
cat("i. Random variable X: Number of customer calls per hour\n")
cat("ii. Distribution of X: Poisson with lambda=12\n")


prob_exactly_15 <- dpois(15, 12)
cat("iii. Probability of exactly 15 calls:", round(prob_exactly_15, 4), "\n")