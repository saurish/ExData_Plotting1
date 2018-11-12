setwd("C:/Users/sbhowmi/Desktop/Self Learning/Exploratory Data Analyis/Course_Directory/Week 1/Git_Project/ExData_Plotting1")

png(file = "plot4.png") # set output device

hhpc <- read.table("household_power_consumption.txt", header = TRUE, sep = ";", dec = ".", na.strings = "?") # read the data set
febData <- subset(hhpc, Date == "1/2/2007" | Date == "2/2/2007")  # slicing data for days, 1/2/2007 & 2/2/2007


par(mfrow = c(2,2))


## Set X-axis labels
axsLabels <- c('Thu', 'Fri', 'Sat')

## First plot
plot(febData$Global_active_power, ylab = "Global Active Power", type="l", xaxt="n", xlab = "")
axis(1, at = c(0,length(febData$Global_active_power)/2,length(febData$Global_active_power)), labels = axsLabels)

## Second plot
plot(febData$Voltage, ylab = "Voltage", type="l", xaxt="n", xlab = "datetime")
axis(1, at = c(0,length(febData$Global_active_power)/2,length(febData$Global_active_power)), labels = axsLabels)

## Third plot
plot(febData$Sub_metering_1, ylab = "Energy sub metering", type="l", xaxt="n", xlab = "", col="black")
lines(febData$Sub_metering_2, col="red")
lines(febData$Sub_metering_3, col="blue")
legend("topright", legend = c('Sub_metering_1','Sub_metering_2','Sub_metering_3'), col = c("black", "red", "blue"), lty = 1, cex = 0.8, xjust = 0)
axis(1, at = c(0,length(febData$Sub_metering_1)/2,length(febData$Sub_metering_1)), labels = axsLabels)

## Fourth plot
plot(febData$Global_reactive_power, ylab = "Global_reactive_power", type="l", xaxt="n", xlab = "datetime")
axis(1, at = c(0,length(febData$Global_reactive_power)/2,length(febData$Global_reactive_power)), labels = axsLabels)

dev.off()