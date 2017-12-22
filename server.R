server <- function(input, output, session) {


#   observe({
#     input$arrayNumbers
#     if (is.null(input$arrayNumbers) == TRUE ) {input$arrayNumbers = NULL }
#   })
#
# if (is.na(input$arrayNumbers) == TRUE) {x <- NULL} esle {x <- 1}

  nNum <- eventReactive(input$ComputeButton, {
    length(unlist(strsplit(input$arrayNumbers, split = ",")))
  })


  # if (is.null(x) == TRUE) {dt <- table(NULL,NULL)} else {
  #
  # nArray <- eventReactive(as.numeric(unlist(strsplit(input$arrayNumbers, split = ","))))
  #
  # nArrL <- length(nArray)
  #
  # dt <- table(nArray,nArrL)
  # }

  nSort <- eventReactive(input$ComputeButton, {
    sort.int(as.numeric(unlist(strsplit(input$arrayNumbers, split = ","))), decreasing = FALSE)}
  )

  nSum <- eventReactive(input$ComputeButton, {

    sum(as.numeric(unlist(strsplit(input$arrayNumbers, split = ","))))
    #   function(input$arrayNumbers)
  }
  )

  nPopulationMean <- eventReactive(input$ComputeButton, {
    #sum(as.numeric(unlist(strsplit(input$arrayNumbers, split = ",")))) / length(unlist(strsplit(input$arrayNumbers, split = ",")))
    nArr <-c(as.numeric(unlist(strsplit(input$arrayNumbers, split = ","))))
    mean(nArr)

  })
  nMedium <- eventReactive(input$ComputeButton, {
    nArr <-c(sort.int(as.numeric(unlist(strsplit(input$arrayNumbers, split = ","))), decreasing = FALSE))
    nArrL <- length(nArr)
    nOE <- (nArrL %% 2)

    if (nOE == 0) { nMed <- (nArr[nArrL/2] + nArr[(nArrL/2 + 1)])/2} else {nMed <- nArr[(nArrL + 1)/2]}

    nMed
  })

  nPopulationVariance <- eventReactive(input$ComputeButton, {
    nArr <-c(as.numeric(unlist(strsplit(input$arrayNumbers, split = ","))))
    nArrL <- length(nArr)
    sum((nArr - mean(nArr))^2)/nArrL
  })

  nPopulationStandartDeviation <- eventReactive(input$ComputeButton, {
    nArr <-c(as.numeric(unlist(strsplit(input$arrayNumbers, split = ","))))
    nArrL <- length(nArr)
    sqrt(sum((nArr - mean(nArr))^2)/nArrL)
  })


  # You can access the value of the widget with input$text, e.g.
  output$resultSum <- renderText({ nSum()})
  output$resultNum <- renderText({ nNum()})
  output$resultPopMean <- renderText({ nPopulationMean()})
  output$resultMedium <- renderText({ nMedium()})
  output$resultSort <- renderText({nSort()})
  output$resultPopVar <- renderText({nPopulationVariance()})
  output$resultPopStdDev <- renderText({nPopulationStandartDeviation()})

  browser()
  output$NumPlot <- renderPlot({

    dt <- table(NULL,NULL)
    nArray <- eventReactive(as.numeric(unlist(strsplit(input$arrayNumbers, split = ","))))

    nArrL <- length(nArray)

    dt <- table(nArray,nArrL)

     # plot(x=ncol(as.numeric(unlist(strsplit(input$arrayNumbers, split = ",")))),
     #      y= as.numeric(unlist(strsplit(input$arrayNumbers, split = ","))))
     barplot(dt,
             width=1, main="Elements",xlab="Element Number",ylab="Elenet Value"
             )
    })
}