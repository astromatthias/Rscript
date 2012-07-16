# Ein R script um ein CSV Datei zu plotten 


#sample1 = read.csv(file="/home/mhn/Dokumente/Fedora_Performance_Test/throughput_sample_1.csv", head=TRUE, sep="\t")
sample2 = read.csv(file="/home/mhn/Dokumente/Fedora_Performance_Test/throughput_sample_2.csv", head=TRUE, sep="\t")
sample3 = read.csv(file="/home/mhn/Dokumente/Fedora_Performance_Test/throughput_sample_3.csv", head=TRUE, sep="\t")
sample4 = read.csv(file="/home/mhn/Dokumente/Fedora_Performance_Test/throughput_sample_4.csv", head=TRUE, sep="\t")

# ohne diese Zeile würde R den Graph in einem Fenster anzeigen.
png("/home/mhn/Entwicklung/R/vortrag/graphiken/throughput_samples.png")

boxplot(as.matrix(sample2), 
	style="quantile",
	outline=FALSE,
	ylim=c(0,280),
	xlim=c(0,12),
	ylab="throughput (MB/s)",
	col=terrain.colors(2),
	xlab="",
	main="Ingest throughput MB /s per sample",
	xaxt="n",
	at=0:1*1 + 0
	)


boxplot(as.matrix(sample3),
	outline=FALSE,
	xaxt="n",
	col=terrain.colors(2),
	at=0:1*1+5,
	add=TRUE
	)

boxplot(as.matrix(sample4),
	outline=FALSE,
	style="quantile",
	xaxt="n",
	col=terrain.colors(2),
	at=0:1*1+10,
	add=TRUE
	)



legend("topleft", inset=.05, title="Fedora 3.5",
   c("akubra-hdfs","akubra-fs"), fill=terrain.colors(2), horiz=FALSE)

axis(1,at=c(1,6,11),labels=c("Sample 1","Sample 2", "Sample 3"),tick=FALSE)

#par(new=T)
#xachse <- c(65,128,255)
#yachse <- c(1,6,11)
#plot(yachse,xachse,ylim=c(0,280),xlim=c(0,12),xlab="",ylab="",axes=FALSE,col="white")
#abline(lm(xachse ~ yachse),col="black")

#par(new=T)
#
#xachse2 <- c(34,69,90)
#yachse2 <- c(0,5,10)
#plot(yachse2,xachse2,ylim=c(0,280),xlim=c(0,12),xlab="",ylab="",axes=FALSE,col="white")
#abline(lm(xachse2 ~ yachse2),col="darkgreen")

curve(34+6*x,col="darkgreen",add=TRUE,from=0,to=11)
curve(33+19*x,col="darkgray",add=TRUE,from=1)


# Diese Zeile ist notwending um das Device für png wieder zu schliessen
dev.off()
