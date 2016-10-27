library(shiny)
library(shinythemes)

shinyUI(
  fluidPage(theme = shinytheme("paper"),

  # Application title
  titlePanel("COP Forex Prediction Model"),

  # Sidebar with a slider input for number of bins
  sidebarLayout(
    sidebarPanel(
      numericInput("box1", "Forecast WTI oil barril (i.e. 50.75): ", 0.0, min = 0.0, max = 120),
      numericInput("box2", "Forecast Brent oil barril (i.e. 49.75): ", 0.0, min = 0.0, max = 120),
      submitButton("submit")
    ),

    # Show a plot of the generated distribution
    mainPanel(
      tabsetPanel(type = "tabs",
                  tabPanel("WTI Model", br(), plotOutput("plot1"), br(), textOutput("out1")),
                  tabPanel("Brent Model", br(), plotOutput("plot2"), br(), textOutput("out2")),
                  tabPanel("Composite Model", br(), plotOutput("plot3"), br(), textOutput("out3"))
    )
  )
))
)

