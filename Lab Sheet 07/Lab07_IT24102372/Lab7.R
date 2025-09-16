setwd("C:\\Users\\Hp\\Desktop\\Lab07_IT24102372")
getwd()


# P(10 <= X <= 25) = P(X <= 25) - P(X <= 10)
punif(25, min = 0, max = 40, lower.tail = TRUE) - punif(10, min = 0, max = 40, lower.tail = TRUE)

# Exponential distribution: rate = 1/3
# P(X <= 2)
pexp(2, rate = 1/3, lower.tail = TRUE)

# Normal distribution: mean = 100, sd = 15
# P(X > 130) = 1 - P(X <= 130)
1 - pnorm(130, mean = 100, sd = 15, lower.tail = TRUE)

# Find x such that P(X <= x) = 0.95
qnorm(0.95, mean = 100, sd = 15, lower.tail = TRUE)