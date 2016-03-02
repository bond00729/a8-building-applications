library(plotly)
library(shiny)
library(dplyr)


data <- iris

shinyServer(function(input, output) {
  output$graph <- renderPlotly({
    
    plot_ly(data, x = data[, input$xAxisChoice], y = data[, input$yAxisChoice], mode = "markers",
            color = Species)
  })
})