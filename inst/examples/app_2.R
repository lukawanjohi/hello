library(shiny)



ui <- shinyUI(fluidPage(
  
  titlePanel("Tabsets"),
  
  sidebarLayout(
    
    sidebarPanel(
      selectInput("lang", "Language:", c("English" = "en", "German" = "de")) ,
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
    l_label <- input$lang
    
    updateSliderInput(session, "bins",
                      label = hello::dict()[["BINS"]][[input$lang]]
    )

    output$distPlot <- hello::io_dist_plot(input, output)
  })
  
  
})



shinyApp(ui = ui, server = server)
