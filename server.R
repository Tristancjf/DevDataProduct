library(shiny)
library(shinythemes)

#function to convert fahrenheit to celsius
fahToCel<-  function(fahrenheit) ((fahrenheit-32)*(5/9))

shinyServer(function(input, output) {
    output$fahrenheit <- renderPrint({input$fahrenheit})
    output$celsius  <- renderPrint({fahToCel(input$fahrenheit)})})