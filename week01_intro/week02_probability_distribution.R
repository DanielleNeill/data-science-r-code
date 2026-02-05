# Week 2 – Using apply() with matrices

# Create the matrix
x <- matrix(1:20, nrow = 10, ncol = 2)
x

# apply() - run the same function across rows or columns of a matrix.
?apply # apply(matrix, 1 =rows, 2=cols, function)

# apply to calculate the mean of each column of x 
apply(x, 2, mean) 

# take each row of x & calculate the sum
apply(x, 1, sum)

rowSums <- apply(x, 1, sum) # Sum each row
rowMeans <- apply(x ,1, mean) # Mean of each row
colSums <- apply(x, 2, sum) # Sum each column
colMeans<- apply(x, 2, mean) # Mean of each column
# Each result is a vector.

# For each row, calculate the 25th and 75th percentiles
apply(x, 1, quantile, probs = c(0.25, 0.75))

# -- Factors --
?factor
x <- factor(c("yes", "yes", "no", "yes", "no"))
x
