##plot1
data <- read.csv("//Users/RuijianWang/Desktop/household_power_consumption.txt", header=TRUE, sep=";",stringsAsFactors = FALSE, dec=".")
#Subsetting the data
newData = subset(data, data$Date=="1/2/2007"|data$Date=="2/2/2007")
Global_active_power = as.numeric(newData$Global_active_power)

png(filename="//Users/RuijianWang/Desktop/plot1.png", height=480, width=480,bg="white")
hist(Global_active_power,col="red",main="Global Active Power",
     xlab="Global Active Power (kilowatts)")
dev.off()