library(dplyr)
library(ggplot2)
library(maps)
library(tidyverse)
library(readr)


states <- map_data('state')
asian_2000 <- read_csv("https://raw.githubusercontent.com/megcheu/LSJ-final-proj/main/asian_2000.csv?token=GHSAT0AAAAAABQW2MUL2DAV6KLVPXH4SISUYRPXONA")
asian_2010 <- read_csv("https://raw.githubusercontent.com/megcheu/LSJ-final-proj/main/asian_2010.csv?token=GHSAT0AAAAAABQW2MUKH7T2XMPIGSAUOTLWYRPXPBQ")
state_2000 <- asian_2000 %>%
  group_by(state) %>%
  summarize(asian_prop = sum(asian_prop, na.rm = T))

state_2010 <- asian_2010 %>%
  group_by(state) %>%
  summarize(asian_prop = sum(asian_prop, na.rm = T))

state_2000$state_lower = tolower(state_2000$state)
state_2010$state_lower = tolower(state_2010$state)

state_data_2000 <- merge(state_2000, states, by.x = "state_lower", by.y = "region")
state_data_2010 <- merge(state_2010, states, by.x = "state_lower", by.y = "region")

server <- function(input, output) {
  
  output$climatePlot <- renderPlotly({
    
    # Makes a line plot of Co2 emissions per capita over time by country
    my_plot <- ggplot(state_data_2000) +
      geom_polygon(mapping = aes(x = long, y = lat, group = group, fill = asian_prop)) +
      scale_fill_gradient(
        low = "blue",
        high = "red",
        space = "Lab",
        na.value = "grey50",
        guide = "colourbar",
        aesthetics = "fill"
      ) +
      coord_map() +
      labs(title = 'Asian Population across the US', subtitle = "2000", fill = "Proportion") 
    
    
    # Make interactive plot
    my_plotly_plot <- ggplotly(my_plot)
  })
  
  output$Plot2 <- renderPlotly({
    
    if (input$plot_type == 1) {
      ggplot(state_data_2000) +
        geom_polygon(mapping = aes(x = long, y = lat, group = group, fill = asian_prop)) +
        scale_fill_gradient(
          low = "blue",
          high = "red",
          space = "Lab",
          na.value = "grey50",
          guide = "colourbar",
          aesthetics = "fill"
        ) +
        coord_map() +
        labs(title = 'Asian Population across the US', subtitle = "2000", fill = "Proportion") 
    } else if (input$plot_type == 2) {
      ggplot(state_data_2010) +
      geom_polygon(mapping = aes(x = long, y = lat, group = group, fill = asian_prop)) +
        scale_fill_gradient(
          low = "blue",
          high = "red",
          space = "Lab",
          na.value = "grey50",
          guide = "colourbar",
          aesthetics = "fill"
        ) +
        coord_map() +
        labs(title = 'Asian Population across the US', subtitle = "2010", fill = "Proportion")
    }
  })
}
  
