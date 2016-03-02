library(plotly)
library(shiny)
library(dplyr)
source("build_visual.R")
data <- iris

shinyServer(function(input, output) {
  output$graph <- renderPlotly({
    build_visual(data)
  })
})