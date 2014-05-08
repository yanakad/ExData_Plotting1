setwd("C:\\coursera\\ExploratoryAnalysis\\Project1")
source("project1.R") 


png(filename = "plot4.png", width = 480, height = 480)
par(mfrow = c(2, 2), mar = c(4, 4, 2, 1), oma = c(0, 0, 2, 0))

with(relevantData,{
  #Plot1
  plot(dateTime,Global_active_power,ylab="Global Active Power",xlab="",type="l")  
  #Plot2
  plot(dateTime,Voltage,ylab="Voltage",xlab="datetime",type="l")
  #Plot3
  plot(dateTime,Sub_metering_1,ylab="Energy Sub Metering",xlab="", type="n")    
  lines(dateTime,Sub_metering_1,col="black")
  lines(dateTime,Sub_metering_2,col="red")
  lines(dateTime,Sub_metering_3,col="blue")
  legend("topright", lty=1, col = c("black","red","blue"), legend = c("Sub_metering_1", "Sub_metering_2","Sub_metering_3"))
  
  #Plot4
  plot(dateTime,Global_reactive_power,type="l")
}
)
dev.off()