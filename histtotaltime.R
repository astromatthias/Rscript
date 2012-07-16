samples <- read.table("/home/mhn/Dokumente/Fedora_Performance_Test/totaltime_summary.csv", header=T, sep="\t")

png("/home/mhn/Entwicklung/R/vortrag/graphiken/totaltime_summary_samples.png")

barplot(as.matrix(samples), 
	main="totaltime: Hadoop distcp and Fedora Referenced Content",
	ylab="total time in seconds",
	space=0.5,
	col=terrain.colors(2)
	)

legend("topright", c("hadoop distcp", "Fedora referenced content"), cex=0.9, bty="n", fill=terrain.colors(2))


dev.off()


