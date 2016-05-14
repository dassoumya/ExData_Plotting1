# Load Data from file
electComsumpt <- read.table("/Users/soumyadas/Desktop/Coursera/Exploratory Graphs/Review 1/household_power_consumption.txt", sep = ";",colClasses = c(rep("character",9)) , na.strings = "?", header = TRUE)

electComsumpt$Date <- as.Date(electComsumpt$Date, "%d/%m/%Y")
electComsumpt$Time <- strptime(electComsumpt$Time, "%H:%M:%S")
electComsumpt <- subset(electComsumpt, Date %in% as.Date(c("2007-02-01", "2007-02-02"), "%Y-%m-%d"))

return(electComsumpt)

