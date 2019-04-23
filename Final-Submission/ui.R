suppressPackageStartupMessages(c(
        library(shinythemes),
        library(shiny),
        library(tm),
        library(stringr),
        library(markdown),
        library(stylo)))

shinyUI(navbarPage("Coursera DS-JHU Capstone", 
                   
                   theme = shinytheme("flatly"),
                   

tabPanel("I know what you think",
         
         fluidRow(
                 
                 column(3),
                 column(6,
                        tags$div(textInput("text", 
                                  label = h3("Enter your text here:"),
                                  value = ),
                        tags$span(style="color:blue",("This application can only respond to English words - Incovenience regretted")),
                        h4("The predicted next word:"),
                        tags$span(style="color:darkred",
                                  tags$strong(tags$h3(textOutput("predictedWord")))),
                        h4("What you have entered:"),
                        tags$em(tags$h4(textOutput("enteredWords"))),
                        align="center")
                        ),
                 column(3)
         )
),


tabPanel("Know NXTWord Application",
         fluidRow(
                 column(2,
                        p("")),
                 column(8,
                        includeMarkdown("./about.md")),
                 column(2,
                        p(""))
         )
)


))
