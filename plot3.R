##plot3
Sub_metering_1 = as.numeric(newData$Sub_metering_1)
Sub_metering_2 = as.numeric(newData$Sub_metering_2)
Sub_metering_3 = as.numeric(newData$Sub_metering_3)

datetime <- paste(as.Date(newData$Date,"%d/%m/%Y"), newData$Time)
newData$datetime <- as.POSIXct(datetime)

png(filename="//Users/RuijianWang/Desktop/plot3.png", height=480, width=480,bg="white")
with(newData, {
  plot(datetime, Sub_metering_1,type = "l",xlab='',ylab='Energy Sub Metering',col="black")
  lines(datetime, Sub_metering_2,col="red")
  lines(datetime, Sub_metering_3,col="blue")
})
legend("topright", pch = 1, col = c("black","red","blue"), legend = c("Sub_metering_1", "Sub_metering_2","Sub_metering_3"))
dev.off()
