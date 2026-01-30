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
