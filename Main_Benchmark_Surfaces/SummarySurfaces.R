## Autor: Joel Chacón Castillo
## Descripción: En este fichero se cargan las superficies de cubriemiento del benchmark WFG y se imprime una imagen de cada instancia...
library("eaf")


#pdf("WFG",width=10,height=10,paper='special') 
Instances = c("WFG1_2", "WFG2_2", "WFG3_2", "WFG4_2","WFG5_2", "WFG6_2", "WFG7_2", "WFG8_2", "WFG9_2", "UF1_2", "UF2_2", "UF3_2", "UF4_2", "UF5_2", "UF6_2", "UF7_2")

for( i in Instances)
{
	setEPS()
	postscript(paste(i,".eps", sep=""))
#	postscript(paste(i,".eps", sep=""), width=7, height=7)
	vsdmoead =  read_datasets(paste( "data/VSD-MOEA_D_", i, sep=""))
	moead =     read_datasets(paste( "data/MOEA_D_", i, sep=""))
	nsgaii=     read_datasets(paste( "data/NSGA-II_", i, sep=""))
	nsgaiii=    read_datasets(paste( "data/NSGA-III_", i, sep=""))
	r2emoa=     read_datasets(paste( "data/R2-EMOA_", i, sep=""))
	
#	strOPTIMAL = paste( "../OPTIMAL/Summary_", i, sep="") 
#	OPTIMAL =  read.data.sets(strOPTIMAL)
#	###Como solucón temporal dado que son muchos puntos y el archivo eps es pesado se obtiene una muestra de la solucion optima..
#	OPTIMAL = OPTIMAL[sample(nrow(OPTIMAL), size=2000, replace=FALSE),]
        colors = c("red", "black", "blue",  "orange", "brown")
#	eafplot( list( 'AVSD-MOEA\\D'=vsdmoead,  'MOEA\\D-DE'=moead, 'NSGA-II'=nsgaii, 'NSGA-III'=nsgaiii, 'R2-EMOA'=r2emoa), percentiles=c(50), col=colors, lty = c("dashed", "dotdash", "dotted", "twodash", "longdash"), xlab="Objective 1", ylab="Objective 2", xlim=c(0, 1.3), ylim=c(0,1.3), main="UF5")
	eafplot( list( 'AVSD-MOEA\\D'=vsdmoead,  'MOEA\\D-DE'=moead, 'NSGA-II'=nsgaii, 'NSGA-III'=nsgaiii, 'R2-EMOA'=r2emoa), percentiles=c(50), col=colors, lty = c("dashed", "dotdash", "dotted", "twodash", "longdash"), xlab="Objective 1", ylab="Objective 2", xlim=c(0, 2.4), ylim=c(0,4.4), main="WFG8")
	#eafplot( list( GDE3=GDE3,  MOEAD=MOEAD, NSGAII=NSGAII, SMSEMOA=SMSEMOA, MOEAD_EVSD=MOEAD_EVSD ), percentiles=c(50), extra.points=OPTIMAL, extra.pch=16, cex=0.1, extra.col="red", extra.legend=c("OPTIMAL"), main = i, col=c("yellow", "green", "blue", "magenta", "black"))
	dev.off()
}

#WFG1 <- read.data.sets("")
#WFG1Optimal <- read.data.sets("WFG1.txt")
#eafplot(WFG1, WFG1Optimal)

##WFG2 <- read.data.sets("Attain_Surface_WFG2.txt")
##WFG2Optimal <- read.data.sets("WFG2.txt")
##eafplot(WFG2, WFG2Optimal)
##WFG3 <- read.data.sets("Attain_Surface_WFG3.txt")
##WFG3Optimal <- read.data.sets("WFG3.txt")
##eafplot(WFG3, WFG3Optimal)
##WFG4 <- read.data.sets("Attain_Surface_WFG4.txt")
##WFG4Optimal <- read.data.sets("WFG4.txt")
##eafplot(WFG4, WFG4Optimal)
##WFG5 <- read.data.sets("Attain_Surface_WFG5.txt")
##WFG5Optimal <- read.data.sets("WFG5.txt")
##eafplot(WFG5, WFG5Optimal)
##WFG6 <- read.data.sets("Attain_Surface_WFG6.txt")
##WFG6Optimal <- read.data.sets("WFG6.txt")
##eafplot(WFG6, WFG6Optimal)
##WFG7 <- read.data.sets("Attain_Surface_WFG7.txt")
##WFG7Optimal <- read.data.sets("WFG7.txt")
##eafplot(WFG7, WFG7Optimal)
##WFG8 <- read.data.sets("Attain_Surface_WFG8.txt")
##WFG8Optimal <- read.data.sets("WFG8.txt")
##eafplot(WFG8, WFG8Optimal)
##WFG9 <- read.data.sets("Attain_Surface_WFG9.txt")
##WFG9Optimal <- read.data.sets("WFG9.txt")
##eafplot(WFG9, WFG9Optimal)
