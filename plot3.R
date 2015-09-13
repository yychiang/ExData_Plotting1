D<-read.table("household_power_consumption.txt",sep=";",skip=grep("1/2/2007", readLines("household_power_consumption.txt"))[1],nrows=2879);


I=1:2879

plot(I,D[,7],'l',xlab="time index",ylab="Energy sub metering",ylim=c(0,40))

par(new=T)

plot(I,D[,8],'l',col="red",xlab="time index",ylab="Energy sub metering",ylim=c(0,40))

par(new=T)

plot(I,D[,9],'l',col="blue",xlab="time index",ylab="Energy sub metering",ylim=c(0,40))


dev.copy(png,'plot3.png')

dev.off()