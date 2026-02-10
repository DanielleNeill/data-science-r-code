# Week 2 Task 4 - Other Probability Distributions

# -- Binomial distributions --
# By answering multiple choice questions (4 answer options) randomly
# What is the probability of getting precisely 50% of questions correct
dbinom(10, size=20, prob=0.25)

# What is the probability of getting 50% or less questions correct?
pbinom(10, size=20, prob=0.25) # cumulative probability function

# -- Poisson distributions --
  # models the probability of events that occur per a time interval

# If on average per minute, there are 7 people are in a coffee shop queue
  # What is the probability there are <=6 people in this queue?
ppois(6, lambda = 7)

# The probability of having >=6 people in the queue is the inverse
ppois(6, lambda = 7, lower=FALSE)

# -- Exponential distribution -- 
  # Food delivery times fit an exponential distribution
  # Mean delivery time is 10 minutes
  # What is the probability of delivery in less than 5 minutes?
  # Rate of delivery in the distribution is 1 delivery every 10 minutes, hence 1/10
pexp(5, rate=1/10)
