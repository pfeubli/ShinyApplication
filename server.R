#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
  output$plot1 <- renderPlot({
    set.seed(1234)
    xseq <- seq(-30,30,0.01)
    mean1 <- input$sliderX[1]
    sd1 <- input$sliderY[1]
    density <- dnorm(xseq, mean1, sd1)
    ds <- dnorm(xseq, 0, 1)

    # draw the histogram with the specified number of bins
    plot(xseq, ds, col="darkgreen",xlab="", ylab="Density", type="l",
         lwd=1, cex=2, main="Normal Probability Density Function", cex.axis=.8)
    lines(xseq, density, col="blue", lwd=2)
    text(-12, 0.4, "Standard Normal Density Function", col = "darkgreen")
  })

})
