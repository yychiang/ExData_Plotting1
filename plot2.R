D<-read.table("household_power_consumption.txt",sep=";",skip=grep("1/2/2007", readLines("household_power_consumption.txt"))[1],nrows=2879);


I=1:2879

plot(I,D[,3],'l',xlab="time index",ylab="Global Activity Power (kilowatts)")

dev.copy(png,'plot2.png')

dev.off()
