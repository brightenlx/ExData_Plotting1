##plot4
png(filename="./Desktop/plot4.png", height=480, width=480,bg="white")
par(mfrow=c(2,2))
#graph1
Global_active_power = as.numeric(newData$Global_active_power)
with(newData, plot(datetime, Global_active_power, type = "l",
                   xlab='',ylab='Global Active Power (kilowatts)'))
#graph2
Voltage = as.numeric(newData$Voltage)
with(newData, plot(datetime, Voltage, type = "l",
                   xlab='datetime',ylab='Voltage'))
#graph3
with(newData, {
  plot(datetime, Sub_metering_1,type = "l",xlab='',ylab='Energy Sub Metering',col="black")
  lines(datetime, Sub_metering_2,col="red")
  lines(datetime, Sub_metering_3,col="blue")
  legend("topright", pch = 1, col = c("black","red","blue"), legend = c("Sub_metering_1", "Sub_metering_2","Sub_metering_3"))
})
#graph4
Global_reactive_power = as.numeric(newData$Global_reactive_power)
with(newData, plot(datetime, Global_reactive_power, type = "l",
                   xlab='datetime',ylab='Global_reactive_power'))
dev.off()
