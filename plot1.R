DT <- fread(
  "sed '1p;/^[12]\\/2\\/2007/!d' household_power_consumption.txt",
  na.strings = c("?", ""))
hist(DT$Global_active_power, col = "red", main="Global Active Power", xlab="Global Active Power Killowatts", ylab="Frequency")
