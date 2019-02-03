#' Convert to results of table() to data.frame
#'
#' @param table The output of table() function
#' @return a data.frame
#' @export
table_to_df <- function(x){
  ndims <- length(dim(x))
  if(ndims > 1)
    out <- as.data.frame.matrix(x)
  if(ndims == 1){
    ncols <- dim(x)[1]
    out <- as.data.frame(matrix(NA, 1, ncols))
    for(i in 1:ncols){
      out[1, i] <- x[[i]]
    }
    names(out) <- names(x)
    row.names(out) <- NULL
  }
  out
}
