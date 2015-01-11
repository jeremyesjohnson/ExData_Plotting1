### Plot 2
#      Inputs: "data" (initialized using assgn1.R)
#     Outputs: a png file named "plot2.png"
# Assumptions: "data" is already initialized using assign1.R, 
#              "data.txt" is in the current working directory

png(filename="plot2.png", width=480, height=480, units="px")

plot(as.POSIXct(paste(data$Date, data$Time), format="%d/%m/%Y %H:%M:%S"), data$Global_active_power, 
     xlab="",
     ylab="Global Active Power (kilowatts)",
     type="l"
)

dev.off()