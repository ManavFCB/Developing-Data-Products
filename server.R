library(shiny)
data<-ToothGrowth
shinyServer(function(input, output) {
toform<-reactive({paste("len~", "as.numeric(", input$x,")")})
fit<-reactive({lm(as.formula(toform()),data=data)})
output$myPlot<-renderPlot({with(data,{plot(as.formula(toform()),xlab=input$x,ylab="len")
abline(fit())})
})
})

