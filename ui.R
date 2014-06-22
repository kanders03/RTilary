shinyUI(pageWithSidebar(
  headerPanel("RTilary\n Try to hit a mark at 1000ft."),
  sidebarPanel(
    sliderInput('theta', 'At what angle in degrees whould you like to fire?', value=45, min=0, max=180, step=1)
  ,  sliderInput('v','At what velocity (ft/sec) would you like to fire?', value=50,min=0,max=1000,step=1) 
  ,   submitButton("Fire!")
  ),
  mainPanel(
    textOutput("message1"),
    plotOutput('field')
  )
))