# Exercise 3.21 - Calculating the expected value of the number of homes
# that a fire department can serve


c <- 8
r <- 21:26
p <- c(.05, .2, .3, .25, .15, .05)

# Compute N(r) = C * pi * r^2
N <- c * pi * r^2

# Compute mu = sum(p(r) * N(r))
mu <- sum(p * N)

print(paste0("mu = ", mu))
