PowerdataFile <- "./data/household_power_consumption.txt"
Powerdata <- read.table(PowerdataFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subData <- Powerdata[Powerdata$Date %in% c("1/2/2007","2/2/2007") ,]
ExData <- as.numeric(subData$Global_active_power)
png("plot1.png", width=480, height=480)
hist(ExData, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()
