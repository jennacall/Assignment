## Assignment 2 
# install packages
install.packages("readr")

library(readr)

VAS <- read.csv("unicef_indicator_1.csv")

Metadata <- read.csv("unicef_metadata.csv")

Financialdata <- read.csv("unicef_indicator_2.csv")

# install visualization packages
install.packages("tidyverse")

library(tidyverse)

tidyverse()
install.packages("gapminder")

library(gapminder)

install.packages("ggplot2")

library(gapminder)
library(dplyr)
library(ggplot2)
unicef_indicator_1_VASsv("/cloud/project/unicef_indicator_1.csv")

data("gapminder")
head(gapminder)

install.packages("dbplyr")
library(dbplyr)
filter(unicef_indicator_1)

unicef_indicator_1_keep <- select(unicef_indicator_1, country, indicator, time_period, obs_value, current_age)

unicef_indicator_1_delete <- select(unicef_indicator_1, -sex)

new_1 <- (unicef_indicator_1_keep)

help <- select(Finalmeta, V1, V6, V7, V8, V11)

final_meta_data <- select(unicef_metadata2, country, year, Population, GDP, Life_expectancy)

manual_join <- full_join(new_1, final_meta_data, by = c("country", "time_period" = "year"))

fullset2 <- filter(manual_join, time_period >= 2000)

ggplot(data = fullset2)

ggplot(data = fullset2, mapping = aes(x = obs_value, y = Life_expectancy)) + geom_point()

ggplot(data = fullset2, mapping = aes(x = obs_value, y = Life_expectancy)) + geom_point() + geom_smooth(method = "lm")

ggplot(data = fullset2, mapping = aes(x = country)) + geom_bar()

install.packages("ggplot2")
library(ggplot2)

mapdata <- map_data("world")

install.packages("dplyr")
library("dplyr")

dataformap <- select(fullset2, country, GDP)

worldmap <- full_join(dataformap, mapdata, by = c("country" = "region"))

map1 <- ggplot(worldmap, x = long, y = lat, country = country)

map2 <- ggplot(mapdata, x = long, y = lat)

plot.ts(fullset2, x = time_period, y = life_expectancy)

ggplot(data = fullset2, mapping = aes(x = time_period, y = Life_expectancy)) + geom_bar("Country")

ggplot(data = fullset2)
  
unicef2011 <- filter(fullset2, time_period == 2011)

ggplot(data = unicef2011) + aes(x = country, y = Life_expectancy) + geom_col()

newnewdata <- head(unicef2011)

ggplot(data = newnewdata, mapping = aes(x = country, y = obs_value)) +geom_col()
#use this in quarto

ggplot(data = newnewdata, mapping = aes(x = country, y = Life_expectancy)) + geom_col()

#use this in quaorto 

ggplot(data = fullset2, mapping = aes(x = time_period, y = obs_value)) + geom_line()

linechart1 <- filter(fullset2, country == Afghanistan)

world_coordinates <- map_data("world")
ggplot(data = world_coordinates) + geom_map(data = world_coordinates, map = world_coordinates,
                                            aes(long, lat, map_id = region))
#world map

#time series 

time_series <- data.frame(data = unicef_indicator_1, year = c(2000, 2001, 2002, 2003, 2004, 2005, 2006, 2007, 2008, 2009, 2010, 2011, 2012, 2013, 2014, 2015, 2016)
           
                          time_series <- data.frame(data = unicef_indicator_1, 
                                                    year = c(2000, 2001, 2002, 2003, 2004, 2005, 2006, 2007, 2008, 2009, 2010, 2011, 2012, 2013, 2014, 2015, 2016))
