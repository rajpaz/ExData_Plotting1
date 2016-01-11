# read data set and get Feb Data
getFebData <- function(){
  fileUrl <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
  if (file.exists("exdata-data-household_power_consumption.zip")!= TRUE)
    download.file(fileUrl,method="curl",destfile="./power_consumption_zip")
  if (!exists("powerData"))
    powerData <- read.table(unz("./power_consumption_zip","household_power_consumption.txt"),
                            header=TRUE,
                            sep=";",
                            colClasses=c("character", "character", rep("numeric",7)),
                            na="?")
  
  print("******Column Names:*****")
  print(colnames(powerData))
  print("**********")
  print(sprintf("numrows: %d",(nrow(powerData))))
  
  # feb data 
  powerData$date_time <- strptime(paste(powerData$Date, powerData$Time), "%d/%m/%Y %H:%M:%S")
  powerData$Date = as.Date(powerData$Date,"%d/%m/%Y")
  febData = powerData[powerData$Date>="2007/02/01" & powerData$Date<="2007/02/02",]  
  return (febData)
}