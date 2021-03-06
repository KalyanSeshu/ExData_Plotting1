pcd = read.csv("household_power_consumption.txt", sep=";", dec=".", colClasses = c("character", "character", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric"), na.strings=c("NA","?"))
pcd$Date = as.Date(pcd$Date, format="%d/%m/%Y")
pcd = subset(pcd, pcd$Date >= "2007-02-01" & pcd$Date <= "2007-02-02")
pcd$Date1 = paste(pcd$Date, pcd$Time, sep=" ")
pcd$Date2 = strptime(pcd$Date1, "%Y-%m-%d %H:%M:%S")
png(filename = "plot2.png")
plot(pcd$Date2, pcd$Global_active_power, type = "l", xlab = "", ylab = "Global Acive Power (kilowatts)")
dev.off()
