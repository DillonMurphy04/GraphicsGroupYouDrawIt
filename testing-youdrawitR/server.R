library(shiny)

# Define server logic required to draw a histogram
function(input, output, session) {
  
    output$custom_data <- reactive({
      
      # Paste data generation here
    
      
    })

    output$shinydrawr <- r2d3::renderD3({
      
      custom_data <- input$custom_data
      
      # paste drawr plot here
      

}
