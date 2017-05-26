#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(

  # Application title
  titlePanel("Normal Probability Density Function"),

  # Sidebar with a slider input for number of bins
  sidebarLayout(
    sidebarPanel(
       sliderInput("sliderX", "Please choose the mean",
                   min = 0,
                   max = 10,
                   value = 1),
       sliderInput("sliderY", "Please choose the standard deviation",
                   min = 1,
                   max = 5,
                   value = 1)
    ),

    # Show a plot of the generated distribution
    mainPanel(
       plotOutput("plot1")
    )
  )
))
