server <- function(input, output, session) {
  
  nSort <- eventReactive(input$ComputeButton, {
    sort.int(as.numeric(unlist(strsplit(input$arrayNumbers, split = ","))), decreasing = FALSE)}
    )

  nSum <- eventReactive(input$ComputeButton, {
    
    sum(as.numeric(unlist(strsplit(input$arrayNumbers, split = ","))))
    #   function(input$arrayNumbers)
  }
  )
  
  nNum <- eventReactive(input$ComputeButton, {
    length(unlist(strsplit(input$arrayNumbers, split = ",")))
  })
  
  nMean <- eventReactive(input$ComputeButton, {
    sum(as.numeric(unlist(strsplit(input$arrayNumbers, split = ",")))) / length(unlist(strsplit(input$arrayNumbers, split = ",")))
    
  })
  
  nMedium <- eventReactive(input$ComputeButton, {
    #browser()
    nArr <-c(sort.int(as.numeric(unlist(strsplit(input$arrayNumbers, split = ","))), decreasing = FALSE))
    nArrL <- length(nArr)
    nOE <- (nArrL %% 2)
    
    if (nOE == 0) { nMed <- (nArr[nArrL/2] + nArr[(nArrL/2 + 1)])/2} else {nMed <- nArr[(nArrL + 1)/2]}
    
    nMed
  })
  
  
  # You can access the value of the widget with input$text, e.g.
  output$resultSum <- renderText({ nSum()})
  output$resultNum <- renderText({ nNum()})
  output$resultMean <- renderText({ nMean()})
  output$resultMedium <- renderText({ nMedium()})
  output$resultSort <- renderText({nSort()}) 
  
}
