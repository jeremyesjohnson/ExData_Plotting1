### Plot 3
#      Inputs: "data" (initialized using assgn1.R)
#     Outputs: a png file named "plot3.png"
# Assumptions: "data" is already initialized using assign1.R, 
#              "data.txt" is in the current working directory

png(filename="plot3.png", width=480, height=480, units="px")

plot(as.POSIXct(paste(data$Date, data$Time), format="%d/%m/%Y %H:%M:%S"), data$Sub_metering_1, 
     xlab="",
     ylab="Energy sub metering",
     col="black",
     type="l"
)
lines(as.POSIXct(paste(data$Date, data$Time), format="%d/%m/%Y %H:%M:%S"), data$Sub_metering_2, col="red")
lines(as.POSIXct(paste(data$Date, data$Time), format="%d/%m/%Y %H:%M:%S"), data$Sub_metering_3, col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lwd=2, col=c("black", "red", "blue"))

dev.off()