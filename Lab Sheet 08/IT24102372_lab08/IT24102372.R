setwd("C:\\Users\\Hp\\Desktop\\SLIIT\\Y2 SEM 1\\PS\\LABs\\IT24102372_lab08")
getwd()

data <- read.table('Exercise - Laptopsweights.txt', header = TRUE)
names(data) <- c("weights")
attach(data)

# Q1:
popmn <- mean(weights)
popsd <- sd(weights)

# Q2:
samples <- c()
n <- c()

for (i in 1:25) {
  s <- sample(weights, 6, replace = TRUE)
  samples <- cbind(samples, s)
  n <- c(n, paste('S', i))
}

colnames(samples) <- n

s.means <- apply(samples, 2, mean)
s.sds   <- apply(samples, 2, sd)

#  Q3: 
samplemean <- mean(s.means)
samplesd   <- sd(s.means)

truesd <- popsd / sqrt(6)

# --- Print results ---
popmn
popsd

s.means
s.sds

samplemean
samplesd
truesd
