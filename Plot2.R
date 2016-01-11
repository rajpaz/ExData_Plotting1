# Plot
source("./getFebData.R")
# plot 2
if (!exists("febData"))
  febData = getFebData()
png("./Plot2.png", width = 480, height = 480)
plot(febData$date_time,febData$Global_active_power,
     ylab="Global Active Power (kilowatts)",type="l",xlab="")
dev.off()