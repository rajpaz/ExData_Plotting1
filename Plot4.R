# plot 4
source("./getFebData.R")
png("./Plot4.png", width = 480, height = 480)
par(mfrow = c(2, 2))
with(febData,{
  
  plot(date_time,Global_active_power,
       ylab="Global Active Power (kilowatts)",type="l",xlab="")
  
  plot(date_time,Voltage,ylab="Voltage",xlab="datetime",type="l")
  
  plot(date_time,Sub_metering_1,
       ylab="Energy Sub Metering",type="l",col="black",xlab="")
  points(date_time,Sub_metering_2,type="l",col="blue")
  points(date_time,Sub_metering_3,type="l",col="red")
  legend("topright", col = c("black", "blue", "red"),lty=c(1,1,1),bty="n", 
         legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
  
  plot(date_time,Global_reactive_power,ylab="Global_reactive_power",
       xlab="datetime",type="l")
  
})
dev.off()