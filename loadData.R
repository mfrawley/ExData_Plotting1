library(readr)
household_power_consumption <- read_delim("household_power_consumption.txt", 
                                          ";", escape_double = FALSE, trim_ws = TRUE)

# Filter by 
data <- subset(household_power_consumption, Date == "1/2/2007")
data1 <- rbind(data, subset(household_power_consumption, Date == "2/2/2007"))
data1$ParsedDate <- as.Date(data1$Date, format="%d/%m/%Y")
data1$datetime <- strptime(paste(data1$Date, data1$Time, sep=" "), format="%d/%m/%Y %T")
data1$WeekDay <- strftime(data1$Date, format="%A")

#plot 1
setwd("~/Dropbox Personal/Dropbox (Personal)/coursera/exploratory data analysis/week1/ExData_Plotting1/")