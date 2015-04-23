library(shiny)



ui <- shinyUI(fluidPage(
  
  titlePanel("Tabsets"),
  
  sidebarLayout(
    
    sidebarPanel(
      
      hello::ui_bins()
    ),
    
    mainPanel(
      tabsetPanel(
        tabPanel("Plot", hello::ui_dist_plot()), 
        tabPanel("Summary")
      )
    )
  )
))



server <- shinyServer(function(input, output, session) {
 observe({
   output$distPlot <- hello::io_dist_plot(input, output)
 })
  
})



shinyApp(ui = ui, server = server)


