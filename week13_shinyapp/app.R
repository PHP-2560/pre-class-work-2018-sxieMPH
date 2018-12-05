#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
ui <- fluidPage(

   # Application title
   titlePanel("Standard Normal Statistic"),

   # Sidebar with a slider input for number of bins
   sidebarLayout(
      sidebarPanel(
         sliderInput("zscore",
                     "(z) value:",
                     min = -5,
                     max = 5,
                     value = 0)
      ),

      # Show a plot of the generated distribution
      mainPanel(
         textOutput("pvalue" )
      )
   )
)

# Define server logic required to calculate
server <- function(input, output) {


    output$pvalue <- renderText({
    paste("pvalue = ",round(pnorm(input$zscore), digits=2) )


  })
}




# Run the application
shinyApp(ui = ui, server = server)

