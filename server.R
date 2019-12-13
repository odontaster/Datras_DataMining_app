#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# Define a server for the Shiny app
function(input, output) {
        
        # Fill in the spot we created for a plot
        output$phonePlot <- renderPlot({
                
                # Render a barplot
                barplot(WorldPhones[,input$region]*1000, 
                        main=input$region,
                        ylab="Number of Telephones",
                        xlab="Year")
        })
}