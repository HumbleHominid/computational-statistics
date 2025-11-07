# -----------------------
#title: csp_rstudio-intro.R
#author: Gregory Wheeler
#date: 10/10/2022
# -----------------------

## Printing--------------
# 4 panels of RStudio IDE
print('Upper left window: Source panel')
print('Lower left window: Console')

# with cat (concatenate and print)
cat('Upper right window: Environment panel\nLower right window: Tabs for help, plots, etc')

## Help
?cat

## Arithmetic (Source & Console)
2 + 2

## Objects---------------

a <- 1.85   # pronounced "a gets 1.85"
x <- 1:100  # vector
y <- cumsum(x)
z <- x^a

# Head  -----------------
head(y)
head(z)

# Vectors --------------
y[1]       # R is 1-indexed

y[1:10]

# Boolean evaluations---
y[10] < z[10]
y[100]< z[100]

# 
w <- c(y[100], z[100])
?c

## Simple Plots----------
plot(y)

plot(y)
points(z, col="red")

plot(y, type="l")
lines(z, type="l", col = "red")

plot(y, z, type='l', lty = 2, lwd = 1.5, col="red")
abline(coef = c(0,1), col="blue")
legend("topleft", 
       legend = c("z-to-y", "one-to-one reference"),
       col = c("red", "blue"),
       pch = c(15,15)
       
)

## Load data-------------
library(datasets)
data("CO2")

# Spreadsheet data viewer 
View(CO2)
?View

# Inspect Feature
CO2$Treatment

# Levels
levels(CO2$Treatment)  #Treatment is a categorical variable with two levels
levels(CO2$Plant)

# Boxplot: uptake of CO2 as a function of Treatment
plot(uptake~Treatment, data=CO2)

# NOTES: 
# Max and Min exclude outliers:  all points greater than 1.5 X IQR above/below
# the 3rd/1st quartiles are excluded.  Also, the dark line is the median value


# -- Dataframes --------------
# Dataframes ma

n <- c(2, 3, 6) 
fruit <- c("apples", "bananas", "coconuts") 
prime <- c(TRUE, TRUE, FALSE) 
df <- data.frame(n, fruit, prime)  
df


# -- Functions ---------------
my_square <- function(x) {
  return (x^2)
}
my_square(3)


my_sum <- function(x,y) {
  z <- x + y
  return(z)
}
my_sum(2,3)


# -- Iterators --------------
# a for loop
n <- 15
a <- rnorm(n,2000,500)
b <- rnorm(n,5,15)
# blank(bty="n")
plot( NULL , xlim=range(x) , ylim=range(y) )
for ( i in 1:n ) abline( a[i] , b[i] , lwd=1 , col="steelblue" )
