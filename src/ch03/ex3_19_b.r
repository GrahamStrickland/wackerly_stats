# WMS Ex. 3.19 (b) - Propability histogram for p(y) for the number of
# viewers who prefer Jay Leno to David Letterman

ys <- c(.48^3, 3 * .48^2 * .52, 3 * .48 * .52^2, .52^3)
xs <- c("0", "1", "2", "3")

pdf("../../plots/ex3_19_b.pdf")

barplot(
  ys,
  space = 0,
  main = "Probability distribution of preference: Jay Leno vs David Letterman",
  xlab = "Number of viewers",
  names.arg = xs,
  ylab = "Probability",
)

dev.off()
