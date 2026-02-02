# Week 1 – Introduction to R and RStudio
# 
# RStudio Layout:
# - Console: Executes R commands and displays output
# - Environment / History: Shows objects (datasets, variables) currently in memory
# - Files / Plots / Packages / Help: File navigation, visualisations, installed packages, and documentation
# - Script Editor: Used to write, save, and run R code

# Display the current working directory
getwd()

# -- Vectors -- 

# Create a numeric vector
x <- c(3, 5, 10, 4)

# Length of the vector
length(x)

# Calculate the mean of vector x
mean(x)
# Calculate the standard deviation  of vector x
sd(x)

# Summary statistics
summary(x)

# Vectorised operations
sqrt(x)

# Logical checks to evaluate the vector (estimate first)
any(x > 8)
any(x < 8)
all(x > 50)

# Indexing ( Positions where condition is TRUE)
which(x > 4)

# -- Subsetting --
# Subset the vector (estimate first)
y <- x[x > 4]

# Create vector y (contains all of the numbers from vector x > 5 or = 3)
y <-x[x > 5 | x ==3]
#y <- x[x >= 3 & x < 5]
y

# Recode values greater than 4 to 0
x[x > 4] <- 0
x

# -- Arithmetic with vectors --
# Adding 2 to each number in a vector
2 + c(6,0,9,20,22)

# Multiply each number in the vector by 3
3 * c(6,0,9,20,22)

# -- Recycling --
x <- c(3,4,2)
x+2

# -- Round function --
x <- c(9.5,16.3,25.1)
round(x)

# -- Coercion --
x <- c(0:6)
class(x)
as.numeric(x)
as.logical(x)
as.character(x)
x <- as.character(x)

# -- Simulating Data --
?rnorm
x <- rnorm(10)
x <- rnorm(10,20,2)
summary(x)

# -- Setting the Seed --
set.seed(1)
rnorm(5)
rnorm(5)
set.seed(1)
rnorm(5)

# -- Bootstrapping --
set.seed(1)
?sample
sample(c(1:10), 4)
sample(c(1:10), 10, replace = TRUE)

# -- Matrices -- 
m <- matrix(c(1,2,3,4,5,6), nrow = 2, ncol = 3)
m

dim(m)
nrow(m)
ncol(m)
colnames(m) <- c('a', 'b', 'c')
m[,'b']
m[2,2]
m[,2]
m[1,]
m[,1:2]
