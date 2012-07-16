samples <- 
read.table("/home/mhn/Dokumente/Fedora_Performance_Test/objectspersecond_summary.csv", header=T, sep="\t")

png("/home/mhn/Entwicklung/R/vortrag/graphiken/objectspersecond_summary_samples.png")

barplot(as.matrix(samples), 
	main="Objects per second: Managed versus Referenced Content",
	ylab="objects /s",
	beside=TRUE,
	col=terrain.colors(2)
	)

legend("topright", c("Fedora managed content with akubra-hdfs", "Fedora referenced content plus distcp"), cex=0.9, bty="n", 
fill=terrain.colors(2))


dev.off()


