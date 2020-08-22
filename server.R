server <- function(input, output) {
    
    output$distPlot <- renderPlot({
        if(input$option=='a'){       
            i<-1     }     
        if(input$option=='b'){       
            i<-2     }     
        if(input$option=='c'){       
            i<-3     }     
        if(input$option=='d'){       
            i<-4     }
        
        # generate bins based on input$bins from ui.R
        x    <- iris[, i] 
        bins <- seq(min(x), max(x), length.out = input$bins + 1)
        
        # draw the histogram with the specified bins range
        hist(x, main = "Histogram of Iris Dataset", xlab = "Iris Attribute", ylab = "Frequency", breaks = bins, col = 'blue', border = 'white')
    })
}
