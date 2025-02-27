library(shiny)

ui <- fluidPage(
  titlePanel("Simple Data Explorer"),
  
  sidebarLayout(
    sidebarPanel(
      selectInput("dataset", "Choose a dataset:", 
                  choices = c("mtcars", "iris", "airquality")),
      uiOutput("var_select"),
      actionButton("update", "Update Plot")
    ),
    
    mainPanel(
      plotOutput("dataPlot")
    )
  )
)