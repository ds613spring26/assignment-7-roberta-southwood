# Roberta Southwood 
# Copy of App.r 

# The instructions were different for the Canvas and Github assignment, I followed the canvas one: 
# Your app should allow users to switch between a histogram and a boxplot. 
# Additionally, when the boxplot is selected, the user must have the option to choose the color (e.g., green, red, blue,  gray, or ...)


# Business Logic (runs once)
library(shiny) 

# Define UI

ui <- bootstrapPage(
  
  titlePanel("Roberta Southwood Assignment 7"),
  
  # original app code 
  numericInput('n', 'Number of obs', 200),
  
  # select hist or boxplot 
  selectInput("plotType", "Choose plot type:", choices = c("Histogram", "Boxplot")),
  
  # color for boxplot 
  conditionalPanel(
    condition = "input.plotType == Boxplot",
    selectInput("color", "Choose boxplot color:", choices = c("gray", "red", "orange", "yellow", "green", "blue", "purple"))),
  
  # orignal app code
  plotOutput('plot')
  
  )

# Define the server code 

# original code
server <- function(input, output) {
  output$plot <- renderPlot({
    data <- runif(input$n)
    
    # new if statements 
    if (input$plotType == "Histogram") {
      hist(data, col = "gray", main = "Histogram")}
      else 
        {boxplot(data, col = input$color, main = "Boxplot")}
  })
}

# Return a Shiny app object
shinyApp(ui = ui, server = server)



