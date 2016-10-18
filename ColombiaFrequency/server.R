library(shiny)
library(plotly)
library(ggplot2)
data <- read.csv("Colombia2016Frequencies.csv")

data$sales <- data$sales_2015 + data$sales_2016
data$frequency <- data$frequency_2015 + data$frequency_2016
data$averageSales <- (data$sales_2015 + data$sales_2016) / 18


shinyServer(function(input, output) {
  output$plot1 <- renderPlotly({
    if(input$selectChannel == 1){
      data <- data[(data$channel == "NIKE ONLY STORE"), ]
    }
    if(input$selectChannel == 2){
      data <- data[(data$channel == "SPORTING GOODS"), ]
    }
    if(input$selectChannel == 3){
      data <- data[(data$channel == "ATHLETIC SPECIALTY"), ]
    }
    if(input$selectChannel == 4){
      data <- data[(data$channel == "FAMILY FOOTWEAR"), ]
    }
    if(input$selectChannel == 5){
      data <- data[(data$channel == "DIGITAL"), ]
    }
    if(input$selectChannel == 6){
      data <- data[(data$channel == "DEPARTMENT"), ]
    }
    if(input$selectChannel == 7){
      data <- data[(data$channel == "WHOLESALE"), ]
    }
    
    # Query data on level
    if(input$selectLevel == 1){
      data <- data[(data$level == "BS"), ]}
    if(input$selectLevel == 2){
      data <- data[(data$level == "BT"), ]} 
    if(input$selectLevel == 3){
      data <- data[(data$level == "GD"), ]} 
    if(input$selectLevel == 4){
      data <- data[(data$level == "VC"), ]}
    
    plot_ly(x = data$sales, y = data$frequency, mode = "markers", 
            text = data$name, hoverinfo="text+x+y", color = data$channel, size = data$sales)  
  })
})
