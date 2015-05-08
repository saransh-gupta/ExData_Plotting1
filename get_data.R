# Coursera Data Science Specialisation - Exploratory Data Analysis
# Date - May 08, 2015
# Tile - Course Project 1

# "pow" is the complete data-set
pow <- read.table("C:/Mu Sigma/Data Science/Johns Hopkins Data Science/04 Exploratory data analysis/Week 1/exdata_data_household_power_consumption/household_power_consumption.txt",
                  header = TRUE, sep = ";",
                  colClasses = c("character", "character", rep("numeric",7)), na = "?")

# Create a logical vector to subset the required data
subset <- pow$Date == "1/2/2007" | pow$Date == "2/2/2007" 

# Create subset of data, namely "data"
data <- pow[subset,]      # Sub-setted data

# Create a new variable by combining two existing variables
dt <- paste(data$Date, data$Time)    

# Use strptime() to format the new variable and add to the existing sub-set
data$DateTime <- strptime(dt, "%d/%m/%Y %H:%M:%S")  

# Insert Row Names for reference
rownames(data) <- 1:nrow(data)            # Get row number values
