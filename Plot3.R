# plot 3
# Plot
source("./getFebData.R")
png("./Plot3.png", width = 480, height = 480)
plot(febData$date_time,febData$Sub_metering_1,
     ylab="Energy Sub Metering",type="l",col="black",xlab="")
points(febData$date_time,febData$Sub_metering_2,type="l",col="blue")
points(febData$date_time,febData$Sub_metering_3,
       ylab="Global Active Power (kilowatts)",type="l",col="red")
legend("topright", col = c("black", "blue", "red"),lty=c(1,1,1),
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),xpd=NA)
#dev.copy(png, file = "Plot3.png")
dev.off()