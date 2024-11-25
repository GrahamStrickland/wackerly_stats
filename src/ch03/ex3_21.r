# Exercise 3.21 - Calculating the expected value of the number of homes
# that a fire department can serve


c <- 8
r <- 21:26
p <- c(.05, .2, .3, .25, .15, .05)


n <- function(c, r, p) {
  return(c * pi * r^2 * p)
}


mu <- 0
for (i in seq_along(r)) {
  mu <- mu + n(c, r[i], p[i])
}


print(paste0("mu = ", mu))
