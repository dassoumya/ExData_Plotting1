setwd("/Users/soumyadas/Desktop/Coursera/Exploratory Graphs/Review 1/ExData_Plotting1/")

# Load Data from file
electComsumpt <- read.table("/Users/soumyadas/Desktop/Coursera/Exploratory Graphs/Review 1/household_power_consumption.txt", sep = ";",colClasses = c(rep("character",9)) , na.strings = "?", header = TRUE, dec = ".")

#electComsumpt$Date <- as.Date(electComsumpt$Date, "%d/%m/%Y")
#electComsumpt$Time <- strptime(electComsumpt$Time, "%H:%M:%S")
electComsumpt <- subset(electComsumpt, Date %in% c("1/2/2007", "2/2/2007"))

datetime <- strptime(paste(electComsumpt$Date,electComsumpt$Time,sep = " "), "%d/%m/%Y %H:%M:%S")
# Create PNG Plot Page
png("plot2.png")
plot(datetime, as.numeric(electComsumpt$Global_active_power), ylab = "Global Active Power (kilowatts)", xlab = "", type = "l")
dev.off()
