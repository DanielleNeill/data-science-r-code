# Week 2 – Using apply() with matrices

# Create matrix
x <- matrix(1:20, nrow = 10, ncol = 2)
x

# --- APPLY - run the same function across rows or columns of a matrix.
?apply # apply(matrix, 1 =rows, 2=cols, function)
apply(x, 2, mean) # take each column of x & calculate the mean
apply(x, 1, sum) # take each row of x & calculate the sum
rowSums <- apply(x, 1, sum) # Sum each row
rowMeans <- apply(x ,1, mean) # Mean of each row
colSums <- apply(x, 2, sum) # Sum each column
colMeans<- apply(x, 2, mean) # Mean of each column
# Each result is a vector.
# For each row, calculate the 25th and 75th percentiles
apply(x, 1, quantile, probs = c(0.25, 0.75))

# --- FACTORS - represent categorical (nominal) data
?factor
# Initialise the factor
x <- factor(c("yes", "yes", "no", "yes", "no"))
# Display the factor
x
# Levels represent the categories in the data
levels(x)
# Count occurrences of each category
table(x)

# --- TABLE + APPLY
ages <- c(25,26,37,56,42,25)
affil <- factor(c("U", "R", "R", "D", "D", "U"))
tapply(ages, affil, mean)
tapply(ages, affil, range) # min and max age in each group
# returns a list of values with one element per group
do.call(cbind, tapply(ages, affil, range)) # return above as a matrix

# --- MISSING VALUES: NA vs NAN
# NA = missing / not available (unknown)
# NaN = “not a number” (usually from invalid maths like 0/0)
x <- c(25,26,NA,56,42,25)
is.na(x) # test for NA, returns a logical vector.
is.nan(x) # test for NaN, returns a logical vector.

x <- c(1, 2, NA, 10, 3)
is.na(x)
is.nan(x) 

x <- c(1, 2, NaN, NA, 4)
is.na(x)
is.nan(x)

# --- DATA CLEANSING OF MISSING VALUES
# set all missing values to 0
x <- c(1,2,NA,10,3)
x[is.na(x)] <- 0
x
# input missing value as the mean average
x <- c(1,2,NA,10,3)
x[is.na(x)] <- mean(x)
x
# use the na.rm argument to remove NA values
x[is.na(x)] <- mean(x, na.rm = TRUE)
x