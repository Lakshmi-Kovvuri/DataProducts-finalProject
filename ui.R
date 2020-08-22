library(shiny)

# Define ui for IrisApps that draws a histogram
ui <- fluidPage(
    
    titlePanel("Iris Data Explorer"),
    
    # Sidebar with radio buttons for attribute option and a slider input for bins range 
    sidebarLayout(
        sidebarPanel(
            helpText("Select the attribute to know the variation of each measurement "),
            
            radioButtons("option", "Choose Iris attribute:", list("Sepal.Length"='a', "Sepal.Width"='b', "Petal.Length"='c', "Petal.Width"='d')),
            sliderInput("bins",
                        "Slide me to check the histogram of each attribute",
                        min = 1,
                        max = 50,
                        value = 30)
        ),
        
        # Visualization of Iris Dataset through Histogram
        mainPanel(
            mainPanel(plotOutput("distPlot"))
        )
    )
)