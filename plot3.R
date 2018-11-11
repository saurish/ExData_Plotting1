


setwd("C:/Users/sbhowmi/Desktop/Self Learning/Exploratory Data Analyis/Course_Directory/Week 1/Git_Project/ExData_Plotting1")

hhpc <- read.table("household_power_consumption.txt", header = TRUE, sep = ";", dec = ".", na.strings = "?") # read the data set


febData <- subset(hhpc, Date == "1/2/2007" | Date == "2/2/2007")  # slicing data for days, 1/2/2007 & 2/2/2007


plot(febData$Sub_metering_1, ylab = "Energy Sub Metering", type="l", xaxt="n", xlab = "", col="black")
lines(febData$Sub_metering_2, col="red")
lines(febData$Sub_metering_3, col="blue")

axsLabels <- c('Thu', 'Fri', 'Sat')
axis(1, at = c(0,length(febData$Global_active_power)/2,length(febData$Global_active_power)), labels = axsLabels)

legend("topright", legend = c('Sub_metering_1','Sub_metering_2','Sub_metering_3'), col = c("black", "red", "blue"), lty = 1, cex = 0.8)

dev.copy(png, file = "plot3.png")
dev.off()