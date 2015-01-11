### Plot 4
#      Inputs: "data" (initialized using assgn1.R)
#     Outputs: a png file named "plot4.png"
# Assumptions: "data" is already initialized using assign1.R, 
#              "data.txt" is in the current working directory

png(filename="plot4.png", width=480, height=480, units="px")

par(mfrow=c(2,2), mar=c(4, 4, 2, 1), oma=c(0, 0, 2, 0), cex=0.8)

with(data, {
    plot(as.POSIXct(paste(data$Date, data$Time), format="%d/%m/%Y %H:%M:%S"), data$Global_active_power, 
         xlab="",
         ylab="Global Active Power",
         type="l"
    )
    
    plot(as.POSIXct(paste(data$Date, data$Time), format="%d/%m/%Y %H:%M:%S"), data$Voltage, 
         xlab="datetime",
         ylab="Voltage",
         type="l"
    )
    
    plot(as.POSIXct(paste(data$Date, data$Time), format="%d/%m/%Y %H:%M:%S"), data$Sub_metering_1, 
         xlab="",
         ylab="Energy sub metering",
         col="black",
         type="l"
    )
    lines(as.POSIXct(paste(data$Date, data$Time), format="%d/%m/%Y %H:%M:%S"), data$Sub_metering_2, col="red")
    lines(as.POSIXct(paste(data$Date, data$Time), format="%d/%m/%Y %H:%M:%S"), data$Sub_metering_3, col="blue")
    legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lwd=2, col=c("black", "red", "blue"))
    
    plot(as.POSIXct(paste(data$Date, data$Time), format="%d/%m/%Y %H:%M:%S"), data$Global_reactive_power, 
         xlab="datetime",
         ylab="Global_reactive_power",
         type="l"
    )
})


dev.off()