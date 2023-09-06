library(shiny)
library(dplyr)
library(palmerpenguins)
library(youdrawitR)

# Define server logic required to draw a histogram
function(input, output, session) {
  
  # Paste data generation here
  biscoe_penguins <- penguins |>  filter(island == "Biscoe")
  
  custom_data <- reactive({
    customDataGen(
      df = biscoe_penguins,
      xvar = "body_mass_g",
      yvar = "flipper_length_mm",
      regression_type = "linear",
      log_y = FALSE,
      conf_int = input$confInterval
    )
  })
  
  observeEvent(input$completedLineData, {
    # This block will be executed whenever completedLineData is updated from the JS side
    output$user_data <- renderTable({
      jsonlite::fromJSON(input$completedLineData)
    })
  })
  
  observeEvent(input$resetBtn, {
    session$sendCustomMessage("resetAction", "true")
  })

  output$shinydrawr <- r2d3::renderD3({ drawr(custom_data(), 
                                              hide_buttons = T, 
                                              conf_int = input$confInterval) })

}
