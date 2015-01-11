### Plot 1
#      Inputs: "data" (initialized using assgn1.R)
#     Outputs: a png file named "plot1.png"
# Assumptions: "data" is already initialized using assign1.R, 
#              "data.txt" is in the current working directory

png(filename="plot1.png", width=480, height=480, units="px")

hist(data$Global_active_power, 
     col="red", 
     main="Global Active Power", 
     xlab="Global Active Power (kilowatts)"
)

dev.off()