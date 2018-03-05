source('./loadData.R')

png(filename="plot1.png")
with(data1, hist(Global_active_power, 
                 main="Global Active Power", 
                 xlab="Global Active power (kilowatts)",
                 col="red"))
dev.off()