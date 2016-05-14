setwd("/Users/soumyadas/Desktop/Coursera/Exploratory Graphs/Review 1/ExData_Plotting1/")

# Load Data from file
electComsumpt <- read.table("/Users/soumyadas/Desktop/Coursera/Exploratory Graphs/Review 1/household_power_consumption.txt", sep = ";", stringsAsFactors = FALSE , na.strings = "?", header = TRUE, dec = ".")
electComsumpt <- subset(electComsumpt, Date %in% c("1/2/2007", "2/2/2007"))

datetime <- strptime(paste(electComsumpt$Date,electComsumpt$Time,sep = " "), "%d/%m/%Y %H:%M:%S")

png("plot4.png")
par(mfrow = c(2,2))

plot(datetime, electComsumpt$Global_active_power, ylab = "Global Active Power",xlab = "", type = "l")
plot(datetime, electComsumpt$Voltage, ylab = "Voltage", xlab = "datetime", type = "l")

plot(datetime, electComsumpt$Sub_metering_1, col="black", xlab="", ylab="Energy sub metering", type = "l")
lines(datetime, electComsumpt$Sub_metering_2, col = "red")
lines(datetime, electComsumpt$Sub_metering_3, col = "blue")
legend("topright",col = c("black","red","blue"), c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),lty = 1)

plot(datetime, electComsumpt$Global_reactive_power, xlab = "datetime", ylab = "Global_reactive_power", type = "l")

dev.off()