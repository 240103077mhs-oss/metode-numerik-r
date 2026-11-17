# 3. Central Difference
# f(x) = x^2, di x = 2, h = 0.1

f <- function(x) {
  x^2
}

x <- 2
h <- 0.1

central <- (f(x + h) - f(x - h)) / (2 * h)
central