library(shiny)
library(ggplot2)
data("diamonds")
proper <- function(x) paste0(toupper(substr(x, 1, 1)), tolower(substring(x, 2)))

shinyServer(
        function(input, output) {
                output$boxplot <- renderPlot({
                        ggplot(diamonds, aes(x = diamonds[,input$cat], y = price / carat, fill = diamonds[,input$cat])) +
                                geom_boxplot() +
                                xlab(proper(input$cat)) +
                                ylab("Price per Carat") +
                                theme(legend.position="none")
                })
        }
)