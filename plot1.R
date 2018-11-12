
setwd("C:/Users/sbhowmi/Desktop/Self Learning/Exploratory Data Analyis/Course_Directory/Week 1/Git_Project/ExData_Plotting1")

par(mfrow = c(1,1))

png(file = "plot1.png") # set output device

hhpc <- read.table("household_power_consumption.txt", header = TRUE, sep = ";", dec = ".", na.strings = "?") # read the data set
febData <- subset(hhpc, Date == "1/2/2007" | Date == "2/2/2007")  # slicing data for days, 1/2/2007 & 2/2/2007

# Plot histogram
hist(febData$Global_active_power, xlab = "Global Active Power (Kilowatts)", col = "red", main = "Global Active Power")


dev.off()