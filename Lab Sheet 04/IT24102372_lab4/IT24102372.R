

## Part 1: Setup
setwd("C:\\Users\\Hp\\Desktop\\SLIIT\\Y2 SEM 1\\PS\\IT24102372_lab4")
getwd()
## Exercise 

#1
branch_data<-read.table("Exercise.txt",header=TRUE, sep=",")

#2
attach(branch_data)
for(col in names(branch_data)){
  print(paste(col, " : ", class(branch_data[[col]])))
}
#Branch: Nominal
#Sales: Nominal/Ratio
#Advertising: Nominal/Ratio
#Years:Nominal/Ratio

#3
boxplot(branch_data$Sales_X1, Main="Sales", outline=TRUE, outpch=8, horizontal=TRUE,
        xlab="Sales")

hist(branch_data$Sales_X1, Main="Sales", outline=TRUE, outpch=8, horizontal=TRUE,)

#4
summary(Advertising_X2)
IQR(Advertising_X2)

#5
get.outliers<-function(x){
  q1<-quantile(x)[2]
  q3<-quantile(x)[4]
  iqr<-q3-q1
  
  ub<-q3+1.5*iqr
  lb<-q1-1.5*iqr
  print(paste("Upper Bound = ", ub))
  print(paste("Lower Bound = ", lb))
  print(paste("Outliers= ", paste(sort(x[x<lb | x>ub]),collapse=",")))
}
get.outliers(Years_X3)






