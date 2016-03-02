library(shiny)
library(plotly)

shinyUI(fluidPage(
  
  titlePanel('Flower Information'),
  
  sidebarLayout(
    
    sidebarPanel(
      
      selectInput("data", label = h4("Choose Specifics"), 
                  choices = list("Sepal Length" = 'Sepal.Length', "Sepal Width" = 'Sepal.Width',
                                 "Petal Length" = 'Petal.Length', "Petal Width" = 'Petal.Width'),
                  selected = 'Sepal.Length')
    ),
    
    mainPanel(
      plotlyOutput('graph')
    )
  )
))