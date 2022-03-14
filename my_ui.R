library(ggplot2)
library(plotly)
library(dplyr)
library(stringr)
library(bslib)
library(tidyverse)


introdction <- tabPanel(
  
  "Introduction",
  fluidPage(theme = bs_theme(primary = "#9370DB", font_scale = NULL, bootswatch = "cerulean"),
            
            img(src = "https://raw.githubusercontent.com/megcheu/LSJ-final-proj/main/immigration_law_timeline.png?token=GHSAT0AAAAAABQW2MULCBCQOTLU2NGO3X42YRPYVFQ", 
                height = "60%", width = "60%", align = "center"),
            
            h4("Major Questions"),
            p("Since the outbreak of Covid-19, the coronavirus pandemic seems to have brought nothing but 
              disaster, and crime has always been a hot topic. We would like to see if there is a potential")
  )
)

plot_sidebar <- sidebarPanel(
  selectInput(
    inputId = "user_category",
    label = "Select Country",
    # Fill in the correct code here
    choices = climate_data$country,
    selected = "United States",
    multiple = TRUE)
)

plot_main <- mainPanel(
  plotlyOutput(outputId = "climatePlot")
)

plot_2 <- tabPanel(
  
  "Asian Population Map",
  h5("Is there an Asian Population difference across the US from 2000-2010?"),
  
  sidebarLayout(
    sidebarPanel(
      radioButtons(
        inputId = "plot_type",
        label = h5("Different Distribution of Crimes"),
        choices = list("2000" = 1, "2010" = 2), 
        selected = 1),
    ),
    
    mainPanel(
      plotlyOutput("Plot2"),
      p("This chart displays the number of incidents per Crime Type. Switch between categories to see the 
        distribution from 2019 to 2020. From the graph it is clear to seen that in two of the crime categories 
        there were actually a decrease in crimes (personal and society) but there were an increase of crimes 
        within the property section. While covid may not be a direct reason for this increase, it is still 
        interesting to take note of when considering the different trends.")
    )
  )
  
)

ui <- navbarPage(
  
  "Asian community trends",
  introdction,
  plot_2
)
