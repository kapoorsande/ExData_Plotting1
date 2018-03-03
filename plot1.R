##Read Data from text file

data <- read.table("household_power_consumption.txt", sep = ';', header = TRUE)

## Subset Data

subSetData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

## Convert subset data

subSetData$Global_active_power <- as.numeric(subSetData$Global_active_power)

## Launch png file

png("plot1.png", width = 480, height = 480)

## plotting

hist(subSetData$Global_active_power,col = "red", main = "Global Active Power",
	xlab = "Global Active Power (kilowatts)")
dev.off()
