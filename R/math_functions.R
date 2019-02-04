#' View the upper right corner of matrix or data.frame
#' @param x a real number
#' @return a number between 0 and 1
#' @export
expit <- function(x){
  out <- exp(x)/(1 + exp(x))
  out
}

#' View the upper right corner of matrix or data.frame
#' @param pi a number between 0 and 1
#' @return a real number
#' @export
logit <- function(pi){
  out <- log(pi/(1 - pi))
  out
}
