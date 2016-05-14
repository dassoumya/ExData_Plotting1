setwd("./ExData_Plotting1/")

# Load Data from file
electComsumpt <- read.table("./household_power_consumption.txt", sep = ";",colClasses = c(rep("character",9)) , na.strings = "?", header = TRUE)

electComsumpt$Date <- as.Date(electComsumpt$Date, "%d/%m/%Y")
electComsumpt$Time <- strptime(electComsumpt$Time, "%H:%M:%S")
electComsumpt <- subset(electComsumpt, Date %in% as.Date(c("2007-02-01", "2007-02-02"), "%Y-%m-%d"))

# Create PNG Plot Page
png("plot1.png")
hist(as.numeric(electComsumpt$Global_active_power), breaks = 12, col = "red", xlab = "Global Active Power (kilowatts)", main = "Global Active Power")
dev.off()
