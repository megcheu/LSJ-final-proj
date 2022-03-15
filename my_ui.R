library(ggplot2)
library(plotly)
library(dplyr)
library(stringr)
library(bslib)
library(tidyverse)


introduction <- tabPanel(
  
  "Introduction",
  fluidPage(theme = bs_theme(primary = "#9370DB", font_scale = NULL, bootswatch = "journal"),
            
            h4("What Were the Trickle Down Effects that Immigration Laws had on the Asian Community Over Time?"),
            p("Since the start of the pandemic, society has faced many pivotal events that have been structured by already existing laws. Within this final project I hope to cover what exactly a few of laws are, how they came to be, and the different aspect of how they touched the Asian community. I will be doing this by analyzing a timeline of different laws that have been implemented, population distribution of the Asain community, as well as take a look at the differences of anti-Asian hate crime over the years."),
            h5("What are the Key Content Differences between Popular and Academic Sources?"),
            p("From the sources that I've drawn for this project I can highlight a few main subtle differences. Mainly, that even though the general direction of the two sources are the same, the numbers/focus are different in order to appeal to different and varying audiences." )
  )
)
immigration_law <- tabPanel(

  "Timeline of Asian-specific Immigration Laws",
  img(src = "https://raw.githubusercontent.com/megcheu/LSJ-final-proj/main/immigration_law_timeline.png?token=GHSAT0AAAAAABQW2MULCBCQOTLU2NGO3X42YRPYVFQ", 
      height = "60%", width = "60%", align = "center"),
  p("From this graph we can see every major legal event dealing with or affected Asian immigration."),
  br(),
  p("1854 - People vs. Hall, a California case, rules that Chinese cannot testify for or
against white persons in court"),
  br(),
  p("1860 - A Californian law bars Chinese-Americans, Indians, and AfricanAmericans from public schools."),
  br(),
  p("1870 - Congress omits Asians from their refreshment of naturalization rights."),
  br(),
  p("1882 - Congress passes the Chinese Exclusion Act barring Chinese laborers from
coming to the U.S. for 10 years and prohibiting Chinese already in the
country from becoming naturalized American citizens."),
  br(),
  p("1892 - The Geary Act extends the Chinese Exclusion Act of 1882 for another ten years"),
  br(),
  p("1902 - Congress extends Chinese exclusion for another 10 years."),
  br(),
  p("1913 - Alien Land Law to keep aliens ineligible for U.S. citizenship from buying or leasing land."),
  br(),
  p("1922 - Cable Act, a female U.S. citizen can be stripped of her citizenship for marrying an alien ineligible for citizenship."),
  br(),
  p("1943 -  New Immigration Act sets a quota of 105 immigrants from China per year."),
  br(),
  p("1952 - McCarren-Walter Act repeals the Immigration Act of 1924"),
  br(),
  p("1964 - Congress passes the Civil Rights Act "),
  br(),
  p("1975 - Communist regimes come to power in South Vietnam, Laos, and Cambodia, and about 125,000 refugees immigrate to the U.S."),
  br(),
  p("1989 - Beijing’s Tiananmen Square, marks the beginning of the Asian-American cultural production")
  
)

population_growth <- tabPanel(
  
  "Asian Population Difference",
  img(src = "https://raw.githubusercontent.com/megcheu/LSJ-final-proj/main/Screen%20Shot%202022-03-14%20at%203.49.50%20PM.png", height = "50%", width = "50%", align = "right"),
            img(src = "https://raw.githubusercontent.com/megcheu/LSJ-final-proj/main/Screen%20Shot%202022-03-14%20at%203.49.17%20PM.png", height = "50%", width = "50%", align = "left"),
)

plot_2 <- tabPanel(
  
  "Anti-Asian Hate Trends",
    mainPanel(
      plotlyOutput("Plot2"),
      p("This chart displays the number of incidents per Crime Type. Switch between categories to see the 
        distribution from 2019 to 2020. From the graph it is clear to seen that in two of the crime categories 
        there were actually a decrease in crimes (personal and society) but there were an increase of crimes 
        within the property section. While covid may not be a direct reason for this increase, it is still 
        interesting to take note of when considering the different trends.")
    )
  )
conclusion <- tabPanel(
  
  "Conclusion",
            h4("Major Questions"),
            p("Since the outbreak of Covid-19, the coronavirus pandemic seems to have brought nothing but 
              disaster, and crime has always been a hot topic. We would like to see if there is a potential")
  )

bib <- tabPanel(
  
  "Bibliography",
            h5("Bibliography and Annotations"),
            p("From the sources that I've drawn for this project I can highlight a few main subtle differences. Mainly, that even though the general direction of the two sources are the same, the numbers/focus are different in order to appeal to different and varying audiences." )
  )



ui <- navbarPage(
  
  "Asian Community Trends",
  introduction,
  immigration_law,
  population_growth,
  plot_2,
  conclusion,
  bib
)
