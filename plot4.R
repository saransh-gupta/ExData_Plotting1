if (!"get_data.R" %in% list.files()) {
  setwd("C:/Users/hp/Desktop/ExData_Plotting1")
} # If file doesnot exist in working directory, already, change working directory

# Create a new png file with given parameters:
# Width = 480 pixels, Height = 480 pixels
png(filename="plot4.png",
    width = 480,
    height = 480,
    units = "px")

# Modify par() to accomodate various plot, vary mfrow to c(2,2) and vary boundaries to wish
par(mfrow=c(2,2), mar=c(4,3,3,1))
# Plot 1 - Row 1, Column 1
plot(data$DateTime, data$Global_active_power, "l", xlab="", ylab="Global Active Power")

# Plot 2 - Row 1, Column 2
plot(data$DateTime, data$Voltage, "l", xlab = "datetime", ylab="Voltage")

# Plot 3 - Row 2, Column 1
plot(data$DateTime, data$Sub_metering_1, col="black", "l", xlab="", ylab="Energy Submetering")
lines(data$DateTime, data$Sub_metering_2, col="red", "l")
lines(data$DateTime, data$Sub_metering_3, col="blue", "l")
legend("topright", legend= c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), cex=0.8, bty="n", lty=1, col=c("black", "red", "blue"))

# Plot 4 - Row 2 Column 2
plot(data$DateTime, data$Global_reactive_power, "l", xlab="datetime", ylab="Global_Active Power")
dev.off()
# Finish