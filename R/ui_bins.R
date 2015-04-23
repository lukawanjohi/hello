
#' ui_bins
#' 
#' A shiny user interface fragment to select n of bins.
#' 
#' @return an input element
#' @family shiny_ui
#' @export
ui_bins <- function () {
  shiny::sliderInput("bins",
                     dict()[["BINS"]][["en"]],
                     min = 1,
                     max = 50,
                     value = 30)
}
