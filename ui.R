library(shiny)

ui <- fluidPage(
  
  
  #Title Panel
  titlePanel("Compute Population Mean"),
  
  #SideBar
  #sidebarPanel(
  column(4,
         wellPanel(
           textInput("arrayNumbers", label=h3("List of Numbers"), value = "0.3, 0.91, 0.69, 0.57, 0.28, 0.86, 0.68, 0.36, 0.83, 0.88, 
0.76, 0.85, 1.05, 0.7, 0.83, 0.76, 0.51, 0.6, 0.8, 0.71, 1.24, 
                     1.09, 0.23, 0.67, 0.97, 0.97, 0.37, 0.31, 0.76, 0.63, 0.91, 0.97, 
                     0.4, 0.59, 1.05, 0.57, 0.12, 0.69, 0.86, 0.7, 0.6, 0.69, 0.51, 
                     0.72, 1.27, 0.82, 0.43, 0.86, 0.32, 0.83"),
           
           h4("Sorted list of all elements"), verbatimTextOutput("resultSort"),
           h4("Sum of all elements"), verbatimTextOutput("resultSum"),
           h4("Number of all elements"), verbatimTextOutput("resultNum"),
           h4("Population Mean of all elements"), verbatimTextOutput("resultPopMean"),
           h4("Medium of all elements"), verbatimTextOutput("resultMedium"),
           h4("Population Variance of all elements"), verbatimTextOutput("resultPopVar"),
           h4("Population Standart Deviation of all elements"), verbatimTextOutput("resultPopStdDev"),
           actionButton("ComputeButton","Compute")
         )
  )
  
  #mainPanel(plotOutput("NumPlot"))
  
)