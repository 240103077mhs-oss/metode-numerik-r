# Nilai Analitik & Menghitung galat
# f(x) = x^2, di x = 2, h = 0.1

f <- function(x) {
  x^2
}

x <- 2
h <- 0.1

forward <- (f(x + h) - f(x)) / h
backward <- (f(x) - f(x - h)) / h
central <- (f(x + h) - f(x - h)) / (2 * h)

actual <- 2 * x
actual

error_forward <- abs(forward - actual)
error_backward <- abs(backward - actual)
error_central <- abs(central - actual)

error_forward
error_backward
error_central