f <- function(x) {
  x^2
}

x <- 2
actual <- 4

forward_difference <- function(f, x, h) {
  (f(x + h) - f(x)) / h
}

backward_difference <- function(f, x, h) {
  (f(x) - f(x - h)) / h
}

central_difference <- function(f, x, h) {
  (f(x + h) - f(x - h)) / (2 * h)
}

h_values <- c(0.5, 0.1, 0.05, 0.01, 0.001)

results <- data.frame(
  h = h_values,
  forward = sapply(
    h_values,
    function(h) forward_difference(f, x, h)
  ),
  backward = sapply(
    h_values,
    function(h) backward_difference(f, x, h)
  ),
  central = sapply(
    h_values,
    function(h) central_difference(f, x, h)
  )
)

results