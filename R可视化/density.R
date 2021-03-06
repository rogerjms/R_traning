air<-read.csv("airpollution.csv")
par(yaxs="i",las=1)
hist(air$Respirable.Particles,
prob=TRUE,col="black",border="white",
xlab="Respirable Particle Concentrations",
main="Distribution of Respirable Particle Concentrations")
box(bty="l")
lines(density(air$Respirable.Particles,na.rm=T),col="red",lwd=4)