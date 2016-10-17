library(shiny)
shinyUI(fluidPage(
        titlePanel("Tabs1"),
        sidebarLayout(
          sidebarPanel(
            textInput("box1", "Enter tab 1 text: ", value = "Tab 1!"),
            textInput("box2", "Enter tab 2 text: ", value = "Tab 2!"),
            textInput("box3", "Enter tab 3 text: ", value = "Tab 3!")),
          mainPanel(
            tabsetPanel(type = "tabs",
                        tabPanel("Tab1", br(), textOutput("out1")),
                        tabPanel("Tab2", br(), textOutput("out2")),
                        tabPanel("Tab3", br(), textOutput("out3"))
            )
          )
        )
)
)
