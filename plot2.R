source('./loadData.R')

png(filename="plot2.png")
with(data1, plot(datetime, 
                 Global_active_power, type="n", 
                 ylab="Global Active Power (kilowatts)",
                 xlab=""))
with(data1, lines(datetime, Global_active_power))
dev.off()