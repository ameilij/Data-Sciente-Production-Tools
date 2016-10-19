library(shiny)
library(ggplot2)
library(plotly)

shinyUI(fluidPage(
  
  title = "Colombia Shipping Frequency and Volume",
  
  plotlyOutput("plot1"),
  
  hr(),
  
  fluidRow(
    column(3,
           selectInput("selectChannel", label = h5("Seleccionar Canal"), choices = list("Nike Only Stores" = 1, "Sporting Goods" = 2, "Athletic Specialty" = 3, "General Footwear" = 4, "Digital" = 5, "Department Store" = 6, "Wholesale" = 7, "Marketplace" = 8), selected = 8)),
    column(4, offset = 1,
           # Select level to display 
           selectInput("selectLevel", label = h5("Seleccionar Nivel"), choices = list("BEST" = 1, "BETTER" = 2, "GOOD" = 3, "VALUE CHANNEL" = 4, "ALL" = 5), selected = 5)),
    column(4,
           h5("Activar FY"), 
           checkboxInput('year2015', '2015'),
           checkboxInput('year2016', '2016'))     
           )
  )
)
