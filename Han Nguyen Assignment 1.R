# Han Nguyen
# BU ID: U00194394
# Assignment 1

## Try R
x <- scan()

# Enter numbers: 2 0 9 7 1 5 2 2 3 3 2 2 2 3 2 8 0 1 3 4 6

# how long is x? 21
length(x)

# what is the sum of the values in x? 67
sum(x)

# what is the mean of x? 3.190476
mean(x)

# what else can you do with scan?
?scan()

# read txt into spreadsheet
scan(file = "read_this_1.txt")
dataset <- read.table(file = "read_this_1.txt")
write.table(dataset, file = "read_this_1.csv", row.names=FALSE)
read.csv("read_this_1.csv")

################################################ Basic R Exercise 1


##  Question 1

# a
1:20

# b
20:1

# c
c(1:20, 19:1)

# d
tmp <- c(4, 6, 3)

# e
rep(tmp, times=10)

#f
rep(tmp, length=31)

#g
rep(tmp, times=c(10, 20, 30))

## Question 2

x <- seq(3, 6, by=0.1)
exp(x)*cos(x)

## Question 3

# a
x <- seq(3, 36, by=3)
y <- seq(1, 34, by=3)
(0.1^x)*(0.2^y)

# b
x <- 1:25
(2^x)/x

## Question 4

# a
i <- 10:100
sum(i^3 + 4i^2)

# b
i <- 1:25
sum((2^i / i) + (3^i / i^2))

## Question 5

# a
paste("label", 1:30)

# b
paste("fn", 1:30, sep="")

## Question 6

set.seed(50)
xVec <- sample(0:999, 250, replace=T)
yVec <- sample(0:999, 250, replace=T)

# a
yVec[-1] - xVec[-length(xVec)]

# b
sin(yVec[-length(yVec)]) / cos(xVec[-1])

# c
xVec[-c(249,250)] + 2*xVec[-c(1,250)] - xVec[-c(1,2)]

# d
sum((exp(-xVec[-1])) / (xVec[-length(xVec)] + 10))

## Question 7

# a
yVec[yVec > 600]

# b
(1:length(yVec))[yVec > 600]

# c
xVec[yVec > 600]

# d
sqrt(abs(xVec - mean(xVec)))

# e
sum(yVec > max(yVec) - 200)

# f
sum(xVec%%2 == 0)

# g
xVec[order(yVec)]

# h
yVec[c(T,F,F)]

## Question 8

x <- seq(2, 38, by=2)
y <- seq(3, 39, by=2)
1 + sum(cumprod(x / y))
