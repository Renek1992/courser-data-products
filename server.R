library(shiny)
library(ggplot2)

server <- function(input, output, session) {
  datasetInput <- reactive({
    get(input$dataset, "package:datasets")
  })
  
  output$var_select <- renderUI({
    df <- datasetInput()
    selectInput("variable", "Select a variable:", choices = names(df))
  })
  
  output$dataPlot <- renderPlot({
    input$update  # Dependency on button click
    df <- datasetInput()
    var <- input$variable
    if (!is.null(var)) {
      ggplot(df, aes_string(x = var)) + 
        geom_histogram(fill = "blue", bins = 30) +
        theme_minimal()
    }
  })
}