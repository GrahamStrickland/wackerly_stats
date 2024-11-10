# WMS Ex. 3.9 (b) - Propability histogram for p(y) for the number of erroneous
# entries in financial accounts

ys <- c(.95^3, 3 * .05 * .95^2, 3 * .05^2 * .95, .05^3)
xs <- c("0", "1", "2", "3")

pdf("ex3_9_b.pdf")

barplot(
  ys,
  space = 0,
  main = "Probability distribution of erroneous financial entries",
  xlab = "Number of errors",
  names.arg = xs,
  ylab = "Probability",
)

dev.off()
