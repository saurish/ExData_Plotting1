
setwd("C:/Users/sbhowmi/Desktop/Self Learning/Exploratory Data Analyis/Course_Directory/Week 1/Git_Project/ExData_Plotting1")

hhpc <- read.table("household_power_consumption.txt", header = TRUE, sep = ";", dec = ".", na.strings = "?") # read the data set

#format(Sys.time(), "%H:%M:%OS3")
#with(hhpc, { hhpc$Date <- as.Date(hhpc$Date)
#             hhpc$Time <- strptime(hhpc$Time)
#           })

febData <- subset(hhpc, Date == "1/2/2007" | Date == "2/2/2007")  # slicing data for days, 1/2/2007 & 2/2/2007


hist(febData$Global_active_power, xlab = "Global Active Power (Kilowatts)", col = "red", main = "Global Active Power")

dev.copy(png, file = "plot1.png")
dev.off()