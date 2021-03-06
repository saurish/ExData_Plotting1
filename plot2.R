


setwd("C:/Users/sbhowmi/Desktop/Self Learning/Exploratory Data Analyis/Course_Directory/Week 1/Git_Project/ExData_Plotting1")

par(mfrow = c(1,1))

png(file = "plot2.png") # set output device

hhpc <- read.table("household_power_consumption.txt", header = TRUE, sep = ";", dec = ".", na.strings = "?") # read the data set
febData <- subset(hhpc, Date == "1/2/2007" | Date == "2/2/2007")  # slicing data for days, 1/2/2007 & 2/2/2007

# plot data
plot(febData$Global_active_power, ylab = "Global Active Power (Kilowatts)", type="l", xaxt="n", xlab = "")

axsLabels <- c('Thu', 'Fri', 'Sat') # custom x-axis labels
axis(1, at = c(0,length(febData$Global_active_power)/2,length(febData$Global_active_power)), labels = axsLabels)

dev.off()