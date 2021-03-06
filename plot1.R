pcd = read.csv("household_power_consumption.txt", sep=";", dec=".", colClasses = c("character", "character", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric"), na.strings=c("NA","?"))
pcd$Date = as.Date(pcd$Date, format="%d/%m/%Y")
pcd = subset(pcd, pcd$Date >= "2007-02-01" & pcd$Date <= "2007-02-02")
png(filename = "plot1.png")
hist(pcd$Global_active_power, col="red", xlab="Global Acive Power (kilowatts)")
dev.off()
