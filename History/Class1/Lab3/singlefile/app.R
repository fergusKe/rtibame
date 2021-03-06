library(shiny)
server <- function(input, output) {
        someText = reactive({input$textInput})
        output$text <- renderText({        
                someText()
        })
}

ui <- fluidPage(
        mainPanel(
                textInput("textInput","type some text here:"),
                submitButton("Submit"),
                textOutput("text")
        )
        
)

shinyApp(ui = ui, server = server)