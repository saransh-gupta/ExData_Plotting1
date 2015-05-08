# plot1.R

if (!"get_data.R" %in% list.files()) {
  setwd("C:/Users/hp/Desktop/ExData_Plotting1")
}       # If file doesnot exist in working directory, already, change working directory

# Create a new png file with given parameters:
                  # Width = 480 pixels, Height = 480 pixels
png(filename="plot1.png",
    width = 480,
    height = 480,
    units = "px")

# Create the histogram for Global Active Power
hist(data$Global_active_power, 
     col="red", xlab="Global Active Power (kilowatts)",
     main = "Global Active Power", breaks=12)
dev.off()     # Finish
