library(shiny)
library(plotly)

shinyUI(fluidPage(
  
  titlePanel('Flower Information'),
  
  sidebarLayout(
    
    sidebarPanel(
      
      selectInput("yAxisChoice", label = h4("Choose Y Value"), 
                  choices = list("Sepal Length" = 'Sepal.Length', "Sepal Width" = 'Sepal.Width',
                                 "Petal Length" = 'Petal.Length', "Petal Width" = 'Petal.Width'),
                  selected = 'Sepal.Width'),
      
      selectInput("xAxisChoice", label = h4("Choose X Value"), 
                  choices = list("Sepal Length" = 'Sepal.Length', "Sepal Width" = 'Sepal.Width',
                                 "Petal Length" = 'Petal.Length', "Petal Width" = 'Petal.Width'),
                  selected = 'Sepal.Length')
    ),
    mainPanel(
      plotlyOutput('graph')
    )
  )
))