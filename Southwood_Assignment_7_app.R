# Roberta Southwood 
# Copy of App.r 

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
    selectInput("color", "Chppse boxplot color:", choices = c("gray", "red", "orange", "yellow", "green", "blue", "purple"))),
  
  # orignal app code
  plotOutput('plot')
  
  )

