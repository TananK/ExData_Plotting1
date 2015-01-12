DT <- fread(
  "sed '1p;/^[12]\\/2\\/2007/!d' household_power_consumption.txt",
  na.strings = c("?", ""))
DateTime <- as.POSIXct(paste(DT$Date, DT$Time), format="%d/%m/%Y %H:%M:%S")

par(mar = c(4, 4, 2, 1), oma = c(0, 0, 2, 0), mfrow = c(2,2))

with(DT,
  {
      plot(x=DateTime, y=Global_active_power,type = "l", col = "black", ylab="Global Active Power")
      plot(DateTime, DT$Voltage, type="l",ylab="Voltage")
      {
        plot(DateTime,DT$Sub_metering_1,type="l",col="black",ylab="Energy Sub Metering")
        lines(DateTime,DT$Sub_metering_2,col="red")
        lines(DateTime,DT$Sub_metering_3,col="blue")
        legend("topright",pch = "-", col = c("black","red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2","Sub_metering_3"))
      }
      plot(DateTime, DT$Global_reactive_power, type="l",ylab="Global Reactive Power",lwd=2)
  }
      )
