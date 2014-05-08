setwd("C:\\coursera\\ExploratoryAnalysis\\Project1")
source("project1.R") 

histVector = relevantData$Global_active_power

png(filename = "plot1.png",
    width = 480, height = 480)
hist(histVector,col="red",main="Global Active Power",xlab="Global Active Power(kilowatts)")
dev.off()
