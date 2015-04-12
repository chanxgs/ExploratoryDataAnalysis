dataFile <- "./data/household_power_consumption.txt"
Powerdata <- read.table(PowerdataFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subData <- Powerdata[Powerdata$Date %in% c("1/2/2007","2/2/2007") ,]
datetime <- strptime(paste(subData$Date, subData$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
subMeter1 <- as.numeric(subData$Sub_metering_1)
subMeter2 <- as.numeric(subData$Sub_metering_2)
subMeter3 <- as.numeric(subData$Sub_metering_3)
png("plota.png", width=480, height=480)
plot(datetime, subMeter1, type="l", ylab="Energy Submetering", xlab="")
lines(datetime, subMeter2, type="l", col="red")
lines(datetime, subMeter3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))
dev.off()
