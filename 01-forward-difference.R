# 1. Forward Difference
# f(x) = x^2, di x = 2, h = 0.1

f <- function(x) {
  x^2
}

x <- 2
h <- 0.1

forward <- (f(x + h) -(x)) / h
forward