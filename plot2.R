##plot2
#Converting datetime
datetime <- paste(as.Date(newData$Date,"%d/%m/%Y"), newData$Time)
newData$datetime <- as.POSIXct(datetime)

png(filename="//Users/RuijianWang/Desktop/plot2.png", height=480, width=480,bg="white")
with(newData, plot(datetime, Global_active_power, type = "l",
                   xlab='',ylab='Global Active Power (kilowatts)'))
dev.off()