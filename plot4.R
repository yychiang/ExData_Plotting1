D<-read.table("household_power_consumption.txt",sep=";",skip=grep("1/2/2007", readLines("household_power_consumption.txt"))[1],nrows=2879);


I=1:2879


attach(mtcars)
par(mfrow=c(2,2))

################################
plot(I,D[,3],'l',xlab="time index",ylab="Global Activity Power (kilowatts)")

###################################
plot(I,D[,5],'l',xlab="time index",ylab="Voltage")

#####################################

plot(I,D[,7],'l',xlab="time index",ylab="Energy sub metering",ylim=c(0,40))

par(new=T)

plot(I,D[,8],'l',col="red",xlab="time index",ylab="Energy sub metering",ylim=c(0,40))

par(new=T)

plot(I,D[,9],'l',col="blue",xlab="time index",ylab="Energy sub metering",ylim=c(0,40))

#####################################################
par(new=F)


#########################################################
plot(I,D[,4],'l',xlab="time index",ylab="Global_reactive_power")
##################################################################

dev.copy(png,'plot4.png')

dev.off()