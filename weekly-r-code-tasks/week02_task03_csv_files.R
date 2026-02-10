# Week 2 Task 3 - Importing a csv file
View(rundata) # opens a spreadsheet-style view

# Access a single variable (column) rather than whole dataset
rundata$FirstRun 

# Descriptive statistics - Mean - average distance of first run 
mean(rundata$FirstRun)

# Descriptive statistics - standard deviation - how spread out the distances are
# Small SD → most people ran similar distances vs. Large SD → big variation between runners
sd(rundata$FirstRun)

# Descriptive statistics - show centre, spread, extremes (five-number summary + mean)
# (min, 1st quartile (25%), median (50%), mean, 3rd quartile (75%), max )
summary(rundata$FirstRun)

# Histogram (visualise the data)
hist(rundata$FirstRun)

hist(
  rundata$FirstRun,
  xlab = "First run distance (km)",
  ylab = "Frequency",
  main = "Histogram of First Run Distances"
)

# Density estimation (smooth probability density curve)
dens <- density(rundata$FirstRun)
plot(dens) # visualises distribution with noise smoother out (important for probability calculations!)

# Computing the probability of running a distance of 20 to 25km
convertToFunc <- with (dens, splinefun(x, y)) # Convert density to a function
#Integrate between 20 and 25 - calculate probability that a randomly selected runner ran between 20 & 25km on their first run
integrate(convertToFunc, lower=20, upper=25) 

# Normality Testing
# Shapiro-Wilk test of normality - tests if data is normally distributed.
shapiro.test(rundata$FirstRun) # p > 0.05 (data is consistent with normality)

# Create overlapping density functions & interpret results.
# Plot two kernel density estimates on same axes to compare distributions of FirstRun vs SecondRun.
plot(density(rundata$FirstRun), col="red") # draw FirstRun density curve
lines(density(rundata$SecondRun), col="green") # add SecondRun density curve
legend("bottom", legend=c("First run","Second run"),fill=c("red","green")) # add a legend

# Small fixes / “cleaner” version 
#   Handle missing values (na.rm = TRUE)
#   Ensure both curves share the same axis limits + nicer legend
d1 <- density(rundata$FirstRun,  na.rm = TRUE)
d2 <- density(rundata$SecondRun, na.rm = TRUE)

xlim <- range(c(d1$x, d2$x))

plot(d1, col="red", lwd=2, xlim=xlim,
     main="First vs Second Run (Density)",
     xlab="Distance (km)", ylab="Density")

lines(d2, col="green", lwd=2)

legend("bottom", legend=c("First run", "Second run"),
       col=c("red","green"), lwd=2, bty="n")

summary(rundata$SecondRun) 

# Visual comparison & relationship between variables  
# Interpret boxplot
boxplot(rundata)

# Interpret scatterplot
plot(rundata$FirstRun, rundata$SecondRun)
