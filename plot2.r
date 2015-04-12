PowerdataFile <- "./data/household_power_consumption.txt"
Powerdata <- read.table(PowerdataFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subData <- Powerdata[Powerdata$Date %in% c("1/2/2007","2/2/2007") ,]
datetime <- strptime(paste(subData$Date, subData$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
ExData <- as.numeric(subData$Global_active_power)
png("plot2.png", width=480, height=480)
plot(datetime, ExData, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()
