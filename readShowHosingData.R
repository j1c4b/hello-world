readShowHosingData <- function()
{
  library(ggplot2)
housing <- read.csv("C:/Users/jg0003/Documents/R/landdata-states.csv") 
#head(housing[1:5])
#hist(housing$Home.Value)
#ggplot(housing, aes(x=Home.Value)) + geom_histogram(stat_bin(aes(x=count,y=Home.Value), bins = NULL))
ggplot(housing, aes(x=Home.Value)) + geom_histogram()
}