# Plot
source("./getFebData.R")

# Plot -1
png("./Plot1.png", width = 480, height = 480)
if (!exists("febData"))
  febData = getFebData()
hist(febData$Global_active_power,main="Global Active Power for Feb 2007-02-02/03",
     xlab="Global Active Power (kilowatts)",col='red')
dev.off()