setwd("C:\\Users\\Hp\\Desktop\\SLIIT\\Y2 SEM 1\\PS\\IT24102372_-lab5")
getwd()
Delivery_Times<- read.table("Exercise - Lab 05.txt", header = FALSE)
names(Delivery_Times)<- "Delivery_Time"

#convert to numeric vector
Delivery_Time<- as.numeric(Delivery_Times$Delivery_Time)

View(Delivery_Times)
attach(Delivery_Times)


histogram <- hist(Delivery_Time, 
                 main = "Histogram of Delivery Times", 
                 xlab = "Delivery Time (minutes)",
                 breaks = seq(20, 70, length = 10),
                 right = FALSE,
                 col = "lightblue")




breaks<- round(histogram$breaks)
freq<-histogram$counts
cum.freq<- cumsum(freq)
cumulative_data<- c(0, cum.freq)

plot(breaks, cumulative_data, 
     type = "l", 
     main = "Cumulative Frequency Polygon (Ogive) for Delivery Times",
     xlab = "Delivery Time (minutes)", 
     ylab = "Cumulative Frequency",
     col = "blue", 
     lwd = 2,
     ylim = c(0, max(cumulative_data) + 5))


points(breaks, cumulative_data, pch = 16, col = "red")


cbind(Upper_Limit = breaks, Cumulative_Frequency = new)
