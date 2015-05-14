library(shiny)

shinyUI(pageWithSidebar( 
 ##Application title
  headerPanel(
    HTML('<img src="banner.png"/>'),
    windowTitle="My Title"    
    ),
  
sidebarPanel(
    p("Cette application permet de visualiser les resultats des enquetes menes par l ANSD."),

   
    selectInput("dataset", "Choisir une enquete:",
                choices = c("ESPS 1", "ESPS 2")),
    radioButtons("radio", 
                 label = "",
                 choices = list("Base Individu" = 1, "Base Ménage" = 2),selected = 1),
    
    helpText(
        ##HTML("<br></br> Source : <a href = \"http://ns.ansd.sn/esps/\">ESPS II</a>"),
           
           HTML('<br></br> <p align="center"><img src="ansdtransp2.png" alt="File Type" height="200" width="200"> </p>')
        )
    ),
  
  
  # Show the caption, a summary of the dataset and an HTML table with
  # the requested number of observations
  mainPanel(
    tabsetPanel(
      tabPanel("Frequences",
               downloadButton('downloadData1', 'Telecharger les donnees')),


tabPanel("Tableaux croises",
         downloadButton('downloadData', 'Telecharger les donnees'))

    )

  ) 
 
))