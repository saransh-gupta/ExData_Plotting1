
if (!"get_data.R" %in% list.files()) {
  setwd("C:/Users/hp/Desktop/ExData_Plotting1")
} # If file doesnot exist in working directory, already, change working directory

# Create a new png file with given parameters:
# Width = 480 pixels, Height = 480 pixels
png(filename="plot2.png",
    width = 480,
    height = 480,
    units = "px")

# Create a plot between DateTime and Global Active Power
plot(data$DateTime, data$Global_active_power, "l",
     xlab = "", 
     ylab = "Global Active Power (kilowatts)")
dev.off()     # Finish
