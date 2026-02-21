# Week 3 – Task 2 Simulation
# 
# Explore the relationship between different sample sizes (n) and effect sizes (difference in means)
# affect the probability of achieving a true positive/detecting a difference (p<0.05).
# This probability is statistical power.
# ---------------------------------------------------------

# Set parameters for 2 groups (X and Y)
samplesize <- 200 # sample size (n) per group (total N = 400 for 2 independent groups)
 
# True population means (controls effect size)
meanX <- 50 # mean of group X
meanY <- 51 # mean of group Y
# Effect size (raw difference) = meanY - meanX = 1
 
# True population standard deviations (spread / noise)
sdX <- 5 # SD of group X
sdY <- 5 # SD of group Y (equal variance case)
 
# Store p-values
pvalues <- vector(length = 100) # Creates empty numeric vector to store 100 p-values

# Calculate standardized effect Size (Cohen’s d)
effectSize <- abs(meanX - meanY) / sqrt(((sdX*sdX) + (sdY*sdY)) / 2)
effectSize # tells how hard it will be to detect the difference

# Simulation Loop (gives 100 p-values after the loop)
for (i in 1:100) {
  # Generate Data From Populations
  x <- rnorm(samplesize, meanX, sdX)
  y <- rnorm(samplesize, meanY, sdY)
 
  p <- t.test(x,y, paired = FALSE) # Perform independent two-sample t-test
  
  pvalues[i] <- p$p.value # store p-value for each simulated study
} 

# Visualise distribution of p-values
hist(pvalues, breaks=20)
length(pvalues[pvalues<0.05]) # Count significant results
mean(pvalues < 0.05) # Get power estimate

