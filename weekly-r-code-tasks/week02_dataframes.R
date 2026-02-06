# Week 2 - Introduction to data frames

# --- DATA FRAMES (similar to spreadsheets) - import or create
# Create a data frame
x <- data.frame(
  names = c("ben", "joe", "steve"),
  ages= c(31, 24, 45)
  )

# Determine number of columns and rows
nrow(x)
ncol(x)

?str
str(x)

# Access columns/variables using $
x$names

# List free data frames in R
data()

x <- mtcars
? mtcars

# Analyse the mtcars data (Motor Trend Car Road Tests)
# Boxplot mpg (miles per gallon)
boxplot(mtcars$mpg)

#  Create a histogram
hist(mtcars$mpg)

# Boxplot to compare mpg (miles per gallon) between manual & automatic cars
# Method 1 - sub-setting approach (logical conditions)
par(mfrow=c(2,1)) # plot layout settings - 2 rows, 1 col
boxplot(mtcars$mpg[mtcars$am==1], main="Manual cars") # mtcars$am is the transmission type
boxplot(mtcars$mpg[mtcars$am==0], main="Automatic cars")

# Method 2
boxplot(mtcars$mpg~mtcars$am)

# Alternative using grouping (no manual subsetting)
# Option A: Boxplot with groups
boxplot(mpg ~ am, data = mtcars,
        names = c("Automatic", "Manual"),
        main = "MPG by Transmission",
        xlab = "Transmission", ylab = "Miles per gallon (mpg)")

# Option B: am as a factor first 
data(mtcars) # reset data to avoid NAs from earlier work
# Make am a factor properly
mtcars$am <- factor(
  mtcars$am,
  levels = c(0, 1),
  labels = c("Automatic", "Manual")
)
# sanity-check before plotting
str(mtcars$mpg)
str(mtcars$am)

boxplot(mpg ~ am, data = mtcars,
        main = "MPG by Transmission",
        xlab = "Transmission", 
        ylab = "Miles per gallon (mpg)")
