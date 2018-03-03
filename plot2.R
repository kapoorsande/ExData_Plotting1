##Read Data from text file

data <- read.table("household_power_consumption.txt", sep = ';', header = TRUE)

## Subset Data

subSetData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

## Convert subset data

datetime <- strptime(paste(subSetData$Date, subSetData$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
globalActivePower <- as.numeric(subSetData$Global_active_power)

## Launch png file

png("plot2.png", width = 480, height = 480)

## plotting

plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()
