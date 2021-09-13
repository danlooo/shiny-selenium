library(RSelenium)
library(shiny)

ui <- fluidPage(
    titlePanel("Hello RSelenium in Shiny!"),
    verbatimTextOutput("status")
)

server <- function(input, output) {
    # set address to name of docker container
    remDr <- remoteDriver(remoteServerAddr = "shiny-selenium_selenium_1", port = 4444)
    remDr$open()

    output$status <- renderPrint({
        str(remDr$getStatus())
    })
}

shinyApp(ui = ui, server = server)