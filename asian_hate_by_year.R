library(dplyr)
library(ggplot2)
library(tidyverse)

asian_hate <- read_csv("https://raw.githubusercontent.com/megcheu/LSJ-final-proj/main/Anti-Asian%20Hate%20Crime%20-%20Sheet1.csv")

hate_plot <- ggplot(asian_hate) +
  geom_point(mapping = aes(x=Year, y = Incidents)) +
  geom_line(mapping = aes(x=Year, y = Incidents))

ggplotly(hate_plot)

