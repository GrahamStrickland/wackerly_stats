# WMS Ex. 1.25 (b) - Relative frequency histogram representing
# lengths of time to failure for n=88 radio transmitter-devices.

radio <- c(
  16, 224, 16, 80, 96, 536, 400, 80,
  392, 576, 128, 56, 656, 224, 40, 32,
  358, 384, 256, 246, 328, 464, 448, 716,
  304, 16, 72, 8, 80, 72, 56, 608,
  108, 194, 136, 224, 80, 16, 424, 264,
  156, 216, 168, 184, 552, 72, 184, 240,
  438, 120, 308, 32, 272, 152, 328, 480,
  60, 208, 340, 104, 72, 168, 40, 152,
  360, 232, 40, 112, 112, 288, 168, 352,
  56, 72, 64, 40, 184, 264, 96, 224,
  168, 168, 114, 280, 152, 208, 160, 176
)

pdf("../../plots/ex1_25_b.pdf")

hist(radio,
  freq = FALSE,
  main = "Time to Failure for 88 Radio Transmitter-devices",
  xlab = "Time to Failure (minutes)",
  ylab = "Relative Frequency"
)

dev.off()
