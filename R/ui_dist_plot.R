
#' ui_dist_plot
#' 
#' A shiny user interface fragment to show a distribution plot.
#' 
#' @return an output element
#' @family shiny_ui
#' @export
ui_dist_plot <- function () {
  shiny::plotOutput("distPlot")
}


