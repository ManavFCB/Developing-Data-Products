library(shiny)
library(datasets)
shinyUI(fluidPage(
headerPanel(h2("Developing Data Products: Coursera Project")),
sidebarPanel(
h3('Input Panel'),
p("Choose a valid predictor given in the drop-down list below"),
selectInput('x',label='Predictor',selected='len',choices=names(ToothGrowth))),
mainPanel(
plotOutput('myPlot'))
))