setwd("C:\\coursera\\ExploratoryAnalysis\\Project1")
source("project1.R") 

install.packages("zoo")
library(zoo)
timeSeries <- with(relevantData,zoo(Global_active_power, dateTime))
png(filename = "plot2.png", width = 480, height = 480)
plot(timeSeries,ylab="Global Active Power(kilowatts)",xlab="")
dev.off()
