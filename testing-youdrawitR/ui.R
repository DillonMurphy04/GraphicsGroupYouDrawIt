library(shiny)

# Define UI for application that draws a histogram
fluidPage(
  # Application title
  titlePanel("My drawr plot"),
      mainPanel(
        # Show the interactive plot of the generated data
        r2d3::d3Output("shinydrawr"),
        
        fluidRow(
          column(
            width = 4,
            # Add the reset button
            actionButton("resetBtn", "Reset")
          ),
          column(
            width = 4,
            # Add the checkbox for confidence interval
            checkboxInput("confInterval", "Show Confidence Interval", value = TRUE)
          ),
          column(
            width = 4,
            # Show the user data
            tableOutput("user_data")
          )
        )
      )
)
