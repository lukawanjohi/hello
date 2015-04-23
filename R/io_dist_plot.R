#' io_dist_plot
#' 
#' Shiny server side function to construct a distribution plot 
#' 
#' @param input shiny input
#' @param output shiny output
#' @return a renderPlot result
#' @export
io_dist_plot <- function(input, output){
 
  lang = "en"
  if(!is.null(input[["lang"]])) {
    lang = input$lang
  }
  
  lbl <- ui_dict()[["HIST"]][[lang]]
  #lbl <- "Histogram of "
  
  shiny::renderPlot({
    x    <- faithful[, 2]  # Old Faithful Geyser data
    bins <- seq(min(x), max(x), length.out = input$bins + 1)
    
    lbl <- paste(lbl, " '", names(faithful)[2], "'", sep="")
    # draw the histogram with the specified number of bins
    hist(x, breaks = bins, col = 'darkgray', border = 'white', main = lbl)
  })
}
