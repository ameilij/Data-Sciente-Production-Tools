library(shiny)

shinyUI(fluidPage(
  titlePanel("Predict Horse Power from MPG"),
  sidebarLayout(
    sidebarPanel(
      sliderInput("sliderMPG", "MPG of car", 10, 35, value = 20),
      checkboxInput("showModel1", "Show/Hide Model 1", value = TRUE),
      checkboxInput("shoewModel2", "Show/Hide Model 2", value = TRUE)),
    mainPanel(
      plotOutput("plot1"),
      h3("Predicted HP from model 1: "),
      textOutput("pred1"),
      h3("Predicted HP from model 2: "),
      textOutput("pred2")
    )
    )
  )
)
