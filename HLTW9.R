#ggplot2 task 

library(ggplot2)
#data(package = "ggplot2")

#ggplot2::mpg

man_class = qplot(data = mpg, y = manufacturer, geom = "bar", fill= class)
man_class + labs(x="Qty.", y="Manufacturer", title="Classes per Manufacturer", subtitle = " ", caption = "toy dataset") 


#hlt1 - Write an R program to create three vectors a, b, c with 5 integers. Combine the three vectors to become a 3×5 matrix where each column represents a vector. Print the content of  the matrix. Plot a graph and label correctly.

a <- c(1,2,3,4,5)
b <- c(10,11,12,13,14)
c <- c(20,21,22,23,24)

d <- cbind(a,b,c)
print(d)

matplot(d, type ="b", pch=4, col=1:3, 
        main = "Combined Matrix", col.main="red", cex.main=3,
        ylab= "Column Values", col.lab="blue",
        xlab = "Rows",cex.lab=1.5)

legend("bottomright",legend = c("series 1", "series 2", "series 3"), lty=1, col=1:3, cex = 0.65)

#hlt2
#Write a R program to create a Data frames which contain details of 5 employees and display the details. (Name, Age, Role and Length of service). 

name <- c("Andrew", "James", "Jake", "Todd", "Charlene")
age <- c(30,40,18,32,60)
role <- c("cleaner", "steward", "PA", "manager", "director")
lengthofservice <- c(2,5,10,15,25)

frame <- data.frame(name, age, role, lengthofservice)  

frame

#hlt3
#Import the GGPLOT 2 library and plot a graph using the qplot function. X axis is the sequence of 1:20 and the y axis is the x ^ 2. Label the graph appropriately. install.packages("ggplot2",dependencies = TRUE)

X <- seq(1:20)
qplot(X, X^2, geom = "line", col = "red",
      main = " X vs X²",
      ylab= "X²")

#hlt4
#Create a simple bar plot of five subjects

subject <- c("English", " Maths", "Geography", "History", "Physics")
intake <- c( 50, 100, 30, 40, 47)

barplot(intake,names.arg=subject,
        main="Subject Intake",
        xlab= "subjects",
        ylab="intake",
        col = "red")

#hlt5
#Write a R program to take input from the user (name and age) and display the values. 

name <- readline("Enter your name: ")
age <- readline("Enter your age:")
namenage <- paste (name, "is", age, "years old")
print(namenage)

#hlt6
#Write a R program to create a sequence of numbers from 20 to 50 and find the mean of numbers from 20 to 50 and sum of numbers.

sq <- seq(20:50)
mean(sq)
sum(sq)

#hlt7
# Write a R program to create a vector which contains 10  random integer values between -50 and +50

sample(-50:50, 10, replace = TRUE)

#vect = c(as.integer(runif(10, min=-50, max=50)))
#vect

#hlt8 
# Write a R program to get the first 10 Fibonacci numbers.

Fibonacci <- numeric(10)

Fibonacci[1] <- Fibonacci[2] <- 1
for (i in 3:10) Fibonacci[i] <- Fibonacci[i - 2] + Fibonacci[i - 1]

print("First 10 Fibonacci numbers:")
print(Fibonacci)


