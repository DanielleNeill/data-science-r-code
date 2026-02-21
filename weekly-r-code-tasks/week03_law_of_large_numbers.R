# Week 3 – Task 1 Law of Large Numbers
# 
# As the sample size increases, its sample mean and SD 
# move closer to the true population mean and SD.
# i.e. Larger samples are typically more representative of the population.
# ---------------------------------------------------------

#set.seed(123)
# 1: Create a population
population <- rnorm(1000, 52, 40) # Generates random numbers from a normal distribution

# 2: Create empty vectors to store results
samplemeans <- vector(length = 100)
sampleSDs <- vector(length = 100)

# 3: Loop through increasing sample sizes
for (i in 1:100) {
  y <- sample(population, i*10)
  samplemeans[i] <- mean(y)
  sampleSDs[i] <- sd(y)
}

# 4: Plot the sample means (scatter plot)
plot(samplemeans,
     type = "p", # "p" = points (default scatter plot)
     main = "Sample Means vs Sample Size",
     xlab = "Iteration (Increasing Sample Size)",
     ylab = "Sample Mean")

# Add a horizontal line showing the TRUE population mean (52)
abline(h = 52, col = "red", lwd = 2) # true mean, line color & width

# 5: Plot the sample standard deviations
plot(sampleSDs,
     type = "p",
     main = "Sample SDs vs Sample Size",
     xlab = "Iteration (Increasing Sample Size)",
     ylab = "Sample SD")

# Add horizontal line for TRUE population SD (40)
abline(h = 40,
       col = "blue",
       lwd = 2)

