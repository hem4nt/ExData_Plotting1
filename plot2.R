library(ggplot2)

png("plot2.png", width = 480, height = 480)

plot(x=d1$DateTime,y=d1$Global_active_power,type="l",xlab="",ylab="Global Active Power (kilowatts)")

dev.off()

