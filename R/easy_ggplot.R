#' A function to change the font size of the title, x-axis, y-axis, among other aspects.
#' Usually these all need to be adjusted for presentations.
#' The only merit to using this function over ggplot is that this function
#' organizes these similarly themed elements together, making them
#' easier to remember.  It also saves a little typing.
#'
#' @param p                 ggplot object
#' @param main_title  changes title size through axis.title
#' @param axis.title.x changes relative size through axis.title.x
#' @param axis.title.y changes relative size through axis.title.y
#' @param axis.text.x changes relative size through axis.text.x.
#' Remember this function changes the size of text on the x-axis not the
#' main axis title (usually numbers at each tick mark).
#' @param axis.text.y changes relative size through axis.text.y.
#' @param strip.text changes relative size through strip.text
#' @param legend.title changes relative size through legend.title
#' @param legend.text changes relative size through legend.text
#' @return ggplot object
#' @importFrom ggplot2 theme
#' @importFrom ggplot2 element_text
#' @importFrom ggplot2 rel
#' @export
gg_text_size <- function(p, main_title=1, axis.title.x=1, axis.title.y=1,
                         axis.text.x=1, axis.text.y=1, strip.text=NULL,
                         legend.title=NULL, legend.text=NULL){
  p <- p + theme(plot.title = element_text(size=rel(main_title)),
                          axis.title.x = element_text(size=rel(axis.title.x)),
                          axis.title.y = element_text(size=rel(axis.title.y)),
                          axis.text.x = element_text(size=rel(axis.text.x)),
                          axis.text.y = element_text(size=rel(axis.text.y))
                          )
  if(!is.null(strip.text)){
    p <- p + theme(strip.text = element_text(size=rel(strip.text)))
  }
  if(!is.null(legend.title)){
    p <- p + theme(legend.title = element_text(size=rel(legend.title)))
  }
  if(!is.null(legend.text)){
    p <- p + theme(legend.text = element_text(size=rel(legend.text)))
  }
  p
}
