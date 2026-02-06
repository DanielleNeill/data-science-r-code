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
# Boxplot miles per galloon
boxplot(mtcars$mpg)

#  Create a histogram
hist(mtcars$mpg)
