
png("plot4.png", width = 480, height = 480)
par(mfrow=c(2,2))

plot(x=d1$DateTime,y=d1$Global_active_power,type="l",xlab="datetime",ylab="Global Active Power (kilowatts)")

plot(x=d1$DateTime,y=d1$Voltage,type="l",xlab="datetime",ylab="Voltage")

plot(x=d1$DateTime,y=d1$Sub_metering_1,type="l",xlab="datetime",ylab="Energy Sub Metering")
  lines(x=d1$DateTime,y=d1$Sub_metering_2,col="red")
lines(x=d1$DateTime,y=d1$Sub_metering_3,col="blue")

plot(x=d1$DateTime,y=d1$Global_active_power,type="l",xlab="datetime",ylab="Global reactive Power (kilowatts)")


dev.off()


