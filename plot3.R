
png("plot3.png", width = 480, height = 480)

plot(x=d1$DateTime,y=d1$Sub_metering_1,type="l",xlab="",ylab="Global Active Power (kilowatts)")
lines(x=d1$DateTime,y=d1$Sub_metering_2,col="red")
lines(x=d1$DateTime,y=d1$Sub_metering_3,col="blue")

dev.off()
