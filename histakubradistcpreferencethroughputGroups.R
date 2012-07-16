samples <- read.table("/home/mhn/Dokumente/Fedora_Performance_Test/throughtput_summary.csv", header=T, sep="\t")

png("/home/mhn/Entwicklung/R/vortrag/graphiken/throuput_summary_samples.png")

barplot(as.matrix(samples), 
	main="Throughput: Managed versus Referenced Content",
	ylab="throughput MB/s",
	beside=TRUE,
	col=terrain.colors(2)
	)

legend("topleft", c("Fedora managed content with akubra-hdfs", "Fedora referenced content plus distcp"), cex=0.9, bty="n", fill=terrain.colors(2))


dev.off()


