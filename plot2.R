DT <- fread(
  "sed '1p;/^[12]\\/2\\/2007/!d' household_power_consumption.txt",
  na.strings = c("?", ""))
DateTime <- as.POSIXct(paste(DT$Date, DT$Time), format="%d/%m/%Y %H:%M:%S")
plot(x=DateTime, y=DT$Global_active_power,type = "l", col = "black", main="Global Active Power", ylab="Global Active Power Killowatts")
