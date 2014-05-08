setwd("C:\\coursera\\ExploratoryAnalysis\\Project1")

data <- read.table(
  "./data/household_power_consumption.txt",
  sep=";", header=TRUE,stringsAsFactors=FALSE)

data$Date1 <- as.Date(data$Date, format="%d/%m/%Y")
relevantData<- data[data$Date1 >='2007-02-01' & data$Date1 <='2007-02-02',]
relevantData$Global_active_power<-as.numeric(relevantData$Global_active_power)


relevantData$dateTime = as.POSIXlt(with(relevantData, paste(Date1, Time, sep=" ")))

relevantData$Sub_metering_1 <- as.numeric(relevantData$Sub_metering_1)
relevantData$Sub_metering_2 <- as.numeric(relevantData$Sub_metering_2)
relevantData$Sub_metering_3 <- as.numeric(relevantData$Sub_metering_3)