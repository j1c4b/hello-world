learn_function <- function() {
  x <- rnorm(100)
  return(mean(x))
  }
############
second <- function(x) {
  x <- rnorm(length(x))
  return(x)
}