library(shiny)


# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Hello Shiny!"),
  
  # Sidebar with a slider input for the number of bins
  sidebarLayout(
    sidebarPanel(
      hello::ui_nbins()
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
      hello::ui_dist_plot()
    )
  )
))
