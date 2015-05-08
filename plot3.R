if (!"get_data.R" %in% list.files()) {
  setwd("C:/Users/hp/Desktop/ExData_Plotting1")
} # If file doesnot exist in working directory, already, change working directory

# Create a new png file with given parameters:
# Width = 480 pixels, Height = 480 pixels
png(filename="plot3.png",
    width = 480,
    height = 480,
    units = "px")

# Create between DateTime and Sub Setting 1, 2 and 3.
# Vs. Sub_metering_1
plot(data$DateTime, data$Sub_metering_1, col="black", "l", xlab="", ylab="Energy Submetering")
# Vs. Sub_metering_2
lines(data$DateTime, data$Sub_metering_2, col="red", "l")
# Vs. Sub_metering_3
lines(data$DateTime, data$Sub_metering_3, col="blue", "l")
# Insert Legend, keep grid for legend
legend("topright", legend= c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), cex=1, lty=1, col=c("black", "red", "blue"))

dev.off() # Finish