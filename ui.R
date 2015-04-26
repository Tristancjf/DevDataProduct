library(shiny)
library(shinythemes)

shinyUI(fluidPage(theme=shinytheme('flatly'),
    pageWithSidebar(
    headerPanel("Convert from Fahrenheit to Celsius"),

  # Sidebar with input  
    sidebarPanel(
        helpText("Input temperature in Fahrenheit and click Submit."),
      numericInput('fahrenheit', "Temperature in Fahrenheit", 0, min=0, step=1),
      submitButton("Submit")),

    # Show the Data Entered and the Calculation
    mainPanel(
        h4("You entered:"),
        verbatimTextOutput('fahrenheit'),
        h4("Which in Celsius is:"),
        verbatimTextOutput('celsius')))))