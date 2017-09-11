readShowHosingData <- function()
{
  library(ggplot2)
housing <- read.csv("C:/Users/jg0003/Documents/R/landdata-states.csv") 
#head(housing[1:5])
#hist(housing$Home.Value)
#ggplot(housing, aes(x=Home.Value)) + geom_histogram(stat_bin(aes(x=count,y=Home.Value), bins = NULL))
#ggplot(housing, aes(x=Home.Value)) + geom_histogram()

dev.new()
##plot(Home.Value ~ Date, data = subset(housing, State =="MA"))
ggplot(subset(housing, State %in% c("NJ","MA")),
             aes(x=Date,y=Home.Value,color=State)) + geom_point()
#points(Home.Value ~ Date, col="red", data=subset(housing, State == "NJ"))

#legend(1975,400000,c("MA","NJ"), title = "State", col = c("black", "red"),pch = c(1,1))


}