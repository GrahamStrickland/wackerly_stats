# WMS Ex. 1.24 (b) - Relative frequency histogram representing heartrate
# measurements of 20 healthy people at a cadence of 48 cycles per minute
# while engaged in aqua running.

heartrate <- c(
  87, 109, 79, 80, 96, 95, 90, 92, 96, 98,
  101, 91, 78, 112, 94, 98, 94, 107, 81, 96
)

pdf("../../plots/ex1_24_b.pdf")

hist(
  heartrate,
  freq = FALSE,
  main = "Heart Rate of 20 Aqua Runners",
  xlab = "Heart Rate (cycles per minute)",
  ylab = "Relative Frequency"
)

dev.off()
