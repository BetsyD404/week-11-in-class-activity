library(shiny)

ui <- fluidPage(
  titlePanel("Distribution Summary App"),
  
  sidebarLayout(
    sidebarPanel(
      sliderInput("obs", "Number of observations:",
                  min = 10, max = 1000, value = 100),
      
      selectInput("mean", "Select distribution mean:",
                  choices = c("Mean = 4", "Mean = 10", "Mean = 100")),
      
      actionButton("update", "Update summary statistics")
    ),
    
    mainPanel(
      plotOutput("distPlot"),
      textOutput("summaryText")
    )
  )
)
