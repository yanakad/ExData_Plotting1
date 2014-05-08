setwd("C:\\coursera\\ExploratoryAnalysis\\Project1")
source("project1.R") 

png(filename = "plot3.png", width = 480, height = 480)
with(relevantData,{
     plot(dateTime,Sub_metering_1,ylab="Energy Sub Metering",xlab="", type="n")    
     lines(dateTime,Sub_metering_1,col="black")
     lines(dateTime,Sub_metering_2,col="red")
     lines(dateTime,Sub_metering_3,col="blue")
     legend("topright", lty=1, col = c("black","red","blue"), legend = c("Sub_metering_1", "Sub_metering_2","Sub_metering_3"))
   }
)
dev.off()