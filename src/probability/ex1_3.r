# WMS Ex. 1.3 - Relative frequency histogram representing the
# amount of radioactive material in the soil of relaimed
# phosphate mining areas in Florida.


radioactive <- c(
     0.74, 6.46, 1.90, 2.69, 0.75,
     0.32, 9.99, 1.77, 2.41, 1.96,
     1.66, 0.70, 2.42, 0.54, 3.36,
     3.59, 0.37, 1.09, 8.32, 4.06,
     4.55, 0.76, 2.03, 5.70, 12.48
)


hist(
     radioactive,
     freq = FALSE,
     main = "Radioactive Material in Florida",
     xlab = expression("Amount of "^{238}*"U in Soil"),
     ylab = "Relative Frequency"
)


dev.copy(pdf, "ex1_3.pdf")
dev.off()
