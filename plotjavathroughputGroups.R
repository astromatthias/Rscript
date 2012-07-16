# Ein R script um ein CSV Datei zu plotten 


#sample1 = read.csv(file="/home/mhn/Dokumente/Fedora_Performance_Test/throughput_java_sample_1.csv", head=TRUE, sep="\t")
sample2 = read.csv(file="/home/mhn/Dokumente/Fedora_Performance_Test/throughput_java_sample_2.csv", head=TRUE, sep="\t")
sample3 = read.csv(file="/home/mhn/Dokumente/Fedora_Performance_Test/throughput_java_sample_3.csv", head=TRUE, sep="\t")
sample4 = read.csv(file="/home/mhn/Dokumente/Fedora_Performance_Test/throughput_java_sample_4.csv", head=TRUE, sep="\t")

# ohne diese Zeile würde R den Graph in einem Fenster anzeigen.
png("/home/mhn/Entwicklung/R/vortrag/graphiken/throughput_java_samples.png")

boxplot(as.matrix(sample2), 
	style="quantile",
	outline=FALSE,
	ylim=c(0,600),
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



legend("center", inset=.05, title="Hadoop",
   c("copyFromLocal","distcp"), fill=terrain.colors(2), horiz=FALSE)

axis(1,at=c(1,6,11),labels=c("Sample 1","Sample 2", "Sample 3"),tick=FALSE)

# Diese Zeile ist notwending um das Device für png wieder zu schliessen
dev.off()
