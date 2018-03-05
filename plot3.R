source('./loadData.R')

png(filename="plot3.png")

plot(data1$datetime, 
     data1$Sub_metering_1, type="n", 
     ylab="Energy sub metering",
     xlab="")
lines(data1$datetime, data1$Sub_metering_1)
lines(data1$datetime, data1$Sub_metering_2, col="red")
lines(data1$datetime, data1$Sub_metering_3, col="blue")

dev.off()