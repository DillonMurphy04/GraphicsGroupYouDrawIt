library(shiny)

# Define UI for application that draws a histogram
fluidPage(

    # Application title
    titlePanel("My drawr plot"),

    # Sidebar with a slider input for number of bins
    sidebarLayout(
        sidebarPanel(
            reset button,
            ,

        # Show a plot of the generated distribution
        mainPanel(
            r2d3::d3Output("shinydrawr", height = "500px", width = "800px")
            tableOutput("user_original")
        )
    )
)
