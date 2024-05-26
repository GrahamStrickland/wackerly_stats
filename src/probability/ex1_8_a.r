# WMS Ex. 1.8 (a) - Relative frequency histogram representing
# the amount of aluminum oxide in 26 samples of Romano-British
# pottery found at four different kiln sites in the United Kingdom.


al2o3 <- c(14.4, 13.8, 14.6, 11.5, 13.8, 10.9, 10.1,
           11.6, 11.1, 13.4, 12.4, 13.1, 12.7, 12.5,
           11.8, 11.6, 18.3, 15.8, 18.0, 18.0, 20.8,
           17.7, 18.3, 16.7, 14.8, 19.1)


hist(al2o3,
     freq = FALSE,
     main = "Romano-British Pottery from United Kingdom",
     xlab = "Percentage Aluminum Oxide",
     ylab = "Relative Frequency")


pdf("ex1_8_a.pdf")
dev.off()
