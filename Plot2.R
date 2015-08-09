# Read in the data
header <- read.table("household_power_consumption.txt", sep = ";", nrows = 1,
                     stringsAsFactors = FALSE)
data <- read.table("household_power_consumption.txt", sep = ";", skip = 66637,
                   nrows = 2880, col.names = header, na.strings = "?",
                   stringsAsFactors = FALSE)
data$DateTime <- strptime(paste(data$Date, data$Time), "%d/%m/%Y %H:%M:%S")
data$Date <- as.Date(data$DateTime)
data <- data[data$Date >= "2007-02-01" & data$Date <= "2007-02-02",]

# Plot the graph
png("Plot2.png", width = 480, height = 480)

<<<<<<< HEAD
plot(data$DateTime, data$Global_active_power, type = "l", xlab = "",
=======
plot(data$DateTime, data$Global_active_power, type = "l", xlab = NULL,
>>>>>>> origin/master
     ylab = "Global Active Power (kilowatts)")

dev.off()