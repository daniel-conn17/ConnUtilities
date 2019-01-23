#' Helper function for tidyr::gather
#'
#' This is just a help function for using tidyr::gather.  It takes no arguments.
#' All it does it display an example of my most common use case for
#' tidyr::gather.  One common example for me is making violin plots.
#' @importFrom ggplot2 geom_violin
#' @importFrom ggplot2 labs
#' @importFrom ggplot2 ggplot
#' @importFrom ggplot2 aes
#' @importFrom tidyr gather
#' @export
#' @examples
#' ngene <- 10
#' condition1_pvals <- stats::runif(ngene)
#' condition2_pvals <- stats::runif(ngene)
#' condition3_pvals <- stats::runif(ngene)
#' gene_names <- paste("Gene", 1:ngene, sep="")
#' gene_dat <- data.frame(Gene=gene_names,
#'                        condition1_pvals=condition1_pvals,
#'                        condition2_pvals=condition2_pvals,
#'                        condition3_pvals=condition3_pvals)
#' ggdat <- gather(data=gene_dat, key="comparison",
#'                        value="pvalue",
#'                        condition1_pvals, condition2_pvals,
#'                        condition3_pvals, -Gene)
#' violinp <- ggplot(ggdat, aes(x=comparison, y=pvalue)) +
#' geom_violin() + labs(x="Comparison", y="p-value",
#' title="Violin plots of p-values across comparison types")
tidyr_gather_help <- function(){
  out <- NULL
}
