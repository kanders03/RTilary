source("RTilary.R")

the_wind <- sample(-20:20, 1) #Feet Per Second
the_gravity <- 30   #Feet Per Second


shinyServer(
  function(input, output) {
    output$message1 <- renderText({ paste("The wind is blowing (left) at",the_wind,"feet per second",sep=" ")})
    output$field <- renderPlot({ RTilary(gravity=the_gravity,wind=the_wind,angle=input$theta, speed=input$v) })
  }
)