library(shiny)
shinyUI(pageWithSidebar(
        headerPanel("Diamonds: Price per Carat - By Characteristic"),
        sidebarPanel(
                h3('Purpose of the App:'),
                h4('Explore how cut, clarity or color impact the price of diamonds using box plots and the diamonds R dataset.'),
                h3('Instructions'),
                h4('1. Select below the characteristic you wish to explore'),
                h4('2. A box plot of the selected characteristic will be produced'),
                h4('3. Analyze the box plot!'),
                selectInput('cat', 'Characteristic', c("Cut" = "cut", "Color" = "color", "Clarity" = "clarity"))
        ),
        mainPanel(
                h3('Box Plot:'),
                plotOutput('boxplot')
        )
))