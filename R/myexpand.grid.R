#' a version of the expand.grid function that works more intuitively to me
#'
#' @param ...              varying factors that will appear in combinations
#'                         in the output
#' @param stringsAsFactors should characters be converted to factors
#' @return Like expand.grid, "a data.frame containing a row
#' for every combination of supplied factors."  The main
#' difference is that the first factor varies the slowest
#' and, the last factor varies the slowest.  The names of
#' the factors are used as the names in the data.frame.
#' Also, stringsAsFactors is set to FALSE.
#' @export
myexpand.grid <- function(..., stringsAsFactors=F){
  args <- list(...)
  args <- rev(args)
  nargs <- length(args)
  out <- expand.grid(args, stringsAsFactors = stringsAsFactors)
  out <- out[, nargs:1]
  names(out) <- as.character(as.list(match.call()))[-1]
  out
}

