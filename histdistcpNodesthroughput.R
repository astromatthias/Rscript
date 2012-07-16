samples <- read.table("/home/mhn/Dokumente/Fedora_Performance_Test/distcp_summary.csv", 
header=T, sep="\t")

png("/home/mhn/Entwicklung/R/vortrag/graphiken/distcp_java_summary_samples.png")

barplot(as.matrix(samples), 
	main="Throughput: distcp with different number of Nodes",
	ylab="throughput MB/s",
	beside=TRUE,
	col=terrain.colors(3)
	)

legend("topleft", c("9 data nodes", "37 data nodes","copyFromLocal"), cex=0.9, bty="n", 
fill=terrain.colors(3))


dev.off()


