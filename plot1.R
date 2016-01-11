# Plot
source("./getFebData.R")

# Plot -1
if (!exists("febData"))
  febData = getFebData()
hist(febData$Global_active_power,main="Global Active Power for Feb 2007-02-02/03",
     xlab="Global Active Power (kilowatts)",col='red')
dev.copy(png, file = "Plot1.png")
dev.off()