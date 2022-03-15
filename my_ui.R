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
  p("These two graphs show the distribution of the Asian opulation across the United States. At first glance the difference between the two can be hard to notice due to the sheer size of the numbers, however, if you take a closer look at states like Texas and Georgia/Alabama you can seee a slight difference in coloration that demonstrates the increase of the Asian population to that state over the 10 years. ") 
)

plot_2 <- tabPanel(
  
  "Anti-Asian Hate Trends",
    mainPanel(
      plotlyOutput("Plot2"),
      p("This chart displays the anti-Asian hate crime from the years 1991-2020. Hover over the points on the graph to be able to view more details on each point:"),
      br(),
      p("As many incidents, anti-Chinese sentiment was brought forth by the very immigration laws that brought Chinese immigrants over. For example, Chinese immigrants were brought to California because of the creation of the railroads, however, when the railroad was completed and a depression hit California it was the same Chinese immigrants who were villainized (Calavita).")
    )
  )
conclusion <- tabPanel(
  
  "Conclusion",
            h4("Reflection"),
            p("I started of my project knowing that I wanted to learn more and create my assignment around my ethnical past or my parents’ story. My parent’s were both immigrants from two different Asian countries that I was intrigues to see what that was like, what laws they had to deal with at the time, as well as who additional effects came their way. The way I settled on my these was after I had looked through all of my sources of different backgrounds and  noticed that there weren’t any major narrative differences just different levels of severity were being shown through the numbers and writing. 
            I chose the format of creating a website with data visualization partly due to the fact that I took a class this quarter that I learned how to and wanted more applications of it outside of that class. But additionally I had learned the value of being able to see trends of large datasets and knowing how to visualize them and grasp conclusions that were not originally thought possible. Out of all the methods I knew to show code (mobile app, git hub hosted site, html site, etc.) I picked a shiny website because it would be the most easily accessible by the common man and non-coders. 
            I was able to successfully execute my goals for this final project by first creating all the different graphs I had wanted to make. I was able to draft all my graphs beforehand and brainstorm all the type of graphs with their interactions prior to starting the code so that all I had to do was find suitable databases with not much extra trouble. Planning all my steps and every additional step needed to take till the end of a single part really helped me keep on track instead of bouncing around my assignment which can be really easy to do with code. 
Prior to this assignment I had not known in-depth all of the laws that had shaped my community and the ones closest to me. I learned about a time that, even though I might not have lived through and experienced them, my elders around me who raised me had to live through. The events that I learned about were not only about US laws that affected immigration to and fro but also pivotal events that happened in many of the immigrants’ home nation that caused them to depart. I realized how common this storyline is for many families and how it is not just about chasing the “American dream” but actually an escapade to save the ones you love most. 
I don’t believe any of my views changed during the developing/completing of this assignment as that I knew what popular sources did in order to stay relevant and I knew what academic sources do to ensure that they are credible. In addition, coding this type of project instead of writing it out forces me to fully understand and analyze the content I’m displaying prior to doing any code so there wasn’t much room for budge during the process. 
")
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
