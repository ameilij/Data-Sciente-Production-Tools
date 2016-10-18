library(shiny)
library(plotly)

shinyUI(fluidPage(
  titlePanel("Colombia Frequency Analysis"),
  sidebarPanel(
    # Select Channel To Display 
    selectInput("selectChannel", label = h3("Select Channel"), choices = list("Nike Only Stores" = 1, "Sporting Goods" = 2, "Athletic Specialty" = 3, "General Footwear" = 4, "Digital" = 5, "Department Store" = 6, "Wholesale" = 7, "Marketplace" = 8), selected = 8),
  # Select level to display 
  selectInput("selectLevel", label = h3("Select Level"), choices = list("BEST" = 1, "BETTER" = 2, "GOOD" = 3, "VALUE CHANNEL" = 4, "ALL" = 5), selected = 5)),
  mainPanel(
    h3("Frequency of Accounts Against Volume 2015-2016"),
    plotlyOutput("plot1")
  )
))
