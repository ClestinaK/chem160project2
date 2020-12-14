seqlen <- c()
for (i in 1:1000) {
	N <- i
	cat(N, "\n")
	counter <- 1
	while (N != 1) {
		if (N%%2 == 0)
			N <- as.integer(N/2)
		 	else {
				N <- as.integer(3*N+1)
				counter <- counter + 1		
		} 
	}
	seqlen <- c(counter)
}

png("plot1.png")
plot1(seqlen~N)
dev.off()

png("plot2.png")
plot2(max(seqlen)~N)
dev.off()