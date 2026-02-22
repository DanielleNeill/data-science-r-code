# Week 3 – Task 4 Outliers & Boxplots
# 
# Create a vector to store the heart rates of 500 people.
heartRates <- c(59, 90, 97, 91, 86, 77, 63, 76, 52, 73, 66, 101, 78, 99, 90, 53, 89, 52, 75, 90,
                64, 69, 69, 53, 119, 96, 113, 86, 76, 88, 129, 50, 84, 78, 80, 138, 77, 71, 96, 74, 104, 101, 83,
                81, 74, 94, 98, 72, 50, 70, 75, 100, 86, 106, 84, 84, 66, 103, 87, 98, 78, 96, 98, 75, 88, 106,
                90, 81, 103, 81, 94, 106, 65, 73, 73, 109, 92, 91, 93, 72, 50, 83, 102, 59, 74, 81, 89, 71, 84,
                102, 82, 65, 82, 77, 76, 61, 103, 77, 87, 69, 72, 117, 110, 55, 60, 95, 73, 51, 99, 102, 93, 55,
                91, 71, 68, 79, 61, 60, 98, 63, 100, 69, 68, 96, 60, 65, 57, 68, 70, 116, 94, 78, 82, 50, 56, 66,
                115, 104, 68, 79, 102, 99, 63, 60, 98, 67, 50, 55, 101, 70, 71, 72, 106, 102, 95, 79, 101, 87,
                77, 76, 113, 90, 80, 92, 67, 86, 55, 53, 59, 76, 81, 73, 76, 89, 93, 60, 107, 107, 66, 90, 102,
                74, 78, 106, 50, 87, 53, 61, 88, 81, 92, 61, 50, 113, 104, 68, 69, 73, 117, 80, 91, 137, 79, 71,
                72, 109, 50, 104, 50, 87, 97, 101, 50, 90, 53, 94, 109, 77, 93, 61, 74, 67, 78, 65, 52, 86, 102,
                103, 50, 78, 81, 63, 99, 62, 68, 74, 63, 67, 50, 86, 82, 76, 76, 59, 89, 66, 101, 50, 71, 76, 91,
                58, 83, 96, 108, 64, 77, 85, 74, 83, 122, 76, 74, 84, 106, 97, 95, 68, 100, 52, 71, 59, 77, 74,
                77, 72, 83, 79, 75, 81, 106, 77, 89, 85, 65, 81, 69, 71, 62, 64, 80, 64, 96, 68, 74, 89, 97, 87,
                93, 79, 111, 78, 102, 78, 52, 66, 53, 87, 92, 51, 84, 50, 81, 89, 58, 72, 91, 80, 108, 98, 55, 57,
                93, 66, 89, 87, 65, 109, 94, 90, 62, 82, 78, 77, 96, 60, 56, 64, 107, 69, 79, 71, 71, 50, 114, 67,
                95, 67, 103, 66, 50, 89, 70, 68, 92, 80, 95, 88, 102, 89, 101, 104, 74, 99, 64, 127, 73, 50, 96,
                50, 102, 81, 59, 93, 96, 91, 123, 103, 70, 79, 61, 77, 74, 89, 78, 98, 71, 126, 82, 77, 62, 54,
                95, 67, 60, 59, 54, 117, 89, 50, 111, 120, 102, 79, 84, 85, 94, 86, 119, 86, 107, 70, 110, 57,
                59, 108, 80, 90, 67, 77, 112, 89, 50, 89, 64, 105, 97, 96, 74, 103, 77, 80, 81, 50, 127, 57, 89,
                50, 88, 56, 91, 76, 108, 58, 89, 90, 91, 89, 74, 68, 102, 64, 73, 67, 96, 78, 83, 69, 71, 110, 78,
                75, 97, 101, 52, 105, 80, 59, 66, 50, 50, 79, 92, 55, 139, 66, 74, 92, 104, 71, 74, 50, 50, 75,
                85, 71, 50, 86, 71, 107, 63, 89, 77, 95, 60, 88, 72, 87, 66, 98)

# Convert the vector to z-scores using standardization
standardUnits <- scale(heartRates) # scale() returns a matrix
  # could also be done as below
  #standardUnits <- as.numeric(scale(heartRates))

# Run the summary function 
summary(standardUnits) #  mean is 0 indicating values have been standardized, max is 3.1746 SDs above mean indicating outlier exists 

# Convert all negative numbers to positive numbers enables us to count the number of outliers
absoluteStandardUnits <- abs(standardUnits)

# Count the number of outliers according to threshold of 1.96
outliers <- absoluteStandardUnits[absoluteStandardUnits >= 1.96]
length(outliers)

# Change the threshold to identify more extreme outliers
outliers <- absoluteStandardUnits[absoluteStandardUnits >= 3]
length(outliers)

# Boxplot the heartRates vector
boxplot(heartRates,main="Heart Rates")

# Get statistics for outlier calculations
summary(heartRates)
IQR(heartRates)

# Count the number of high outliers 
outliers <- heartRates[heartRates >= 134.5] # calculation of 75th percentile (94.00) & interquartile range (27) 94.00 + (27*1.5) = 134.5
length(outliers)

# Count the number of low outliers 
outliers <- heartRates[heartRates <= 26.5]
length(outliers)

# Coded calculations (opposed to manual lab)
#q1 <- quantile(heartRates, 0.25)
#q3 <- quantile(heartRates, 0.75)
#iqr <- IQR(heartRates)

#upper_fence <- q3 + 1.5 * iqr
#lower_fence <- q1 - 1.5 * iqr

#high_outliers <- heartRates[heartRates >= upper_fence]
#low_outliers  <- heartRates[heartRates <= lower_fence]

#length(high_outliers)
#length(low_outliers)

# Access the raw numbers classified as outliers by the boxplot function 
x <- boxplot(heartRates,main="Heart Rates")
x$out

