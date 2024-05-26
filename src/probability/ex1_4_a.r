# WMS Ex. 1.4 (a) - Relative frequency histogram representing
# the top 40 stocks on the over-the-counter (OTC) market
# traded on one day.


top40 <- c(11.88, 6.27, 5.49, 4.81, 4.40, 3.78, 3.44, 3.11, 2.88, 2.68,
           7.99, 6.07, 5.26, 4.79, 4.05, 3.69, 3.36, 3.03, 2.74, 2.63,
           7.15, 5.98, 5.07, 4.55, 3.94, 3.62, 3.26, 2.99, 2.74, 2.62,
           7.13, 5.91, 4.94, 4.43, 3.93, 3.48, 3.20, 2.89, 2.69, 2.61)


hist(top40,
     freq = FALSE,
     main = "Top 40 Stocks on OTC Market",
     xlab = "Percentage Outstanding Shares Traded",
     ylab = "Relative Frequency")


pdf("ex1_4_a.pdf")
dev.off()
