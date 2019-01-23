#' View the upper right corner of matrix or data.frame
#' @param x object, matrix or data.frame usually
#' @param rowmax desired rows
#' @param colmax desired columns
#' @return matrix or data.frame corner
#' @export
uu <- function(x, rowmax=5, colmax=5){
    xdim <- dim(x)
    nrow <- dim(x)[1]
    ncol <- dim(x)[2]
    out_rowdim <- min(nrow, rowmax)
    out_coldim <- min(ncol, colmax)
    out <- x[1:out_rowdim, 1:out_coldim]
    out
}

#' View the lower left corner of matrix or data.frame
#'
#' @param x object, usually a matrix or data.frame
#' @param rowmax desired rows
#' @param colmax desired columns
#' @return matrix or data.frame corner
#' @export
ll <- function(x, rowmax=5, colmax=5){
    xdim <- dim(x)
    nrow <- dim(x)[1]
    ncol <- dim(x)[2]
    out_rowdim <- min(nrow, rowmax)
    out_coldim <- min(ncol, colmax)
    out <- x[(nrow - out_rowdim + 1):nrow,
             (out_coldim - out_coldim + 1):ncol]
    out
}

#' Wrapper for 'head()' to make for easier typing
#'
#' @param x object, usually a matrix or data.frame
#' @return matrix or data.frame corner
#' @export
hh <- function(x){
  utils::head(x)
}

#' Wrapper for 'summary()' to make for easier typing
#'
#' @param x object
#' @return matrix or data.frame corner
#' @export
ss <- function(x){
  summary(x)
}
