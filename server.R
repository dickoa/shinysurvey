library(shiny)
# Define server logic required to summarize and view the selected dataset
shinyServer(function(input, output) {
  

  datasetInput <- reactive({
    switch(input$dataset,
           "ESPS 1",
           "ESPS 2")
  })
  
output$title <- renderText({ 
  input$dataset 
  })


  output$caption <- renderText({
    input$caption
  })
 

  
})


