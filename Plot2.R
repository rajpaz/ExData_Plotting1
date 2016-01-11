# Plot
source("./getFebData.R")
# plot 2
plot(febData$date_time,febData$Global_active_power,
     ylab="Global Active Power (kilowatts)",type="l",xlab="")
dev.copy(png, file = "Plot2.png")
dev.off()