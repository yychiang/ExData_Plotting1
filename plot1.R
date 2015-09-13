D<-read.table("household_power_consumption.txt",sep=";",skip=grep("1/2/2007", readLines("household_power_consumption.txt"))[1],nrows=2879);

Global_Activity_Power <- D[,3]

hist(Global_Activity_Power,col="red")



dev.copy(png,'plot1.png')

dev.off()
