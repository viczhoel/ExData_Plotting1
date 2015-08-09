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
png("Plot4.png", width = 480, height = 480)
par(mfrow = c(2,2))

<<<<<<< HEAD
plot(data$DateTime, data$Global_active_power, type = "l", xlab = "",
=======
plot(data$DateTime, data$Global_active_power, type = "l", xlab = NULL,
>>>>>>> origin/master
     ylab = "Global Active Power")

plot(data$DateTime, data$Voltage, type = "l", xlab = "datetime",
     ylab = "Voltage")

<<<<<<< HEAD
plot(data$DateTime, data$Sub_metering_1, type = "l", xlab = "",
=======
plot(data$DateTime, data$Sub_metering_1, type = "l", xlab = NULL,
>>>>>>> origin/master
     ylab = "Energy sub metering")
lines(data$DateTime, data$Sub_metering_2, col = "red")
lines(data$DateTime, data$Sub_metering_3, col = "blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       lty = 1, lwd = 2.5, col = c("black", "red", "blue"), bty = "n")

plot(data$DateTime, data$Global_reactive_power, type = "l", xlab = "datetime",
     ylab = "Global_reactive_power")

dev.off()