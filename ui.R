library(shiny)

ui <- fluidPage(
  
  
  #Title Panel
  titlePanel("Compute Population Mean"),
  
  #SideBar
  #sidebarPanel(
  column(4,
         wellPanel(
           textInput("arrayNumbers", label=h3("List of Numbers"), value = ""),
           
           h4("Sorted list of all elements"), verbatimTextOutput("resultSort"),
           h4("Sum of all elements"), verbatimTextOutput("resultSum"),
           h4("Number of all elements"), verbatimTextOutput("resultNum"),
           h4("Mean of all elements"), verbatimTextOutput("resultMean"),
           h4("Medium of all elements"), verbatimTextOutput("resultMedium"),
           
           actionButton("ComputeButton","Compute")
         )
  )
)
