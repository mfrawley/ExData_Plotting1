source('./loadData.R')

png(filename="plot4.png")
#plot 4
par(mfrow=c(2,2)) # all plots on one page 
with(data1, plot(datetime, Global_active_power, type="n", ylab="Global Active Power"))
lines(data1$datetime, data1$Global_active_power)

with(data1, plot(datetime, Voltage, type="n", xlab="datetime"))
lines(data1$datetime, data1$Voltage)


xrange <- range(data1$datetime)
yrange <- range(data1$Sub_metering_1)
cols <- c("black", "red","blue")
plot(data1$datetime, 
     data1$Sub_metering_1, type="n", 
     ylab="Energy sub metering",
     xlab="")
lines(data1$datetime, data1$Sub_metering_1)
lines(data1$datetime, data1$Sub_metering_2, col=cols[2])
lines(data1$datetime, data1$Sub_metering_3, col=cols[3])
legend("topright", c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
       col = cols,
       lty = 1,
       merge = TRUE)

with(data1, plot(datetime, Global_reactive_power, type="n", xlab="datetime"))
with(data1, lines(datetime, Global_reactive_power))

dev.off()
