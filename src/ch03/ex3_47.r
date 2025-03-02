# WMS Ex. 3.47 - Histogram representing binomial probability
# distribution for n = 20, p = .5

require("latex2exp")

ys <- c(
  .000, .000, .000, .001, .006,
  .021, .058, .132, .252, .412,
  .588, .748, .868, .942, .979,
  .994, .999, 1.000, 1.000, 1.000
)
xs <- 1:20

pdf("ex3_47.pdf")

barplot(
  ys,
  space = 0,
  main = TeX(r"(Binomial probability histogram for $n = 20$, $p = .5$)"),
  xlab = TeX(r"($y$)"),
  names.arg = xs,
  ylab = TeX(r"($p(y)$)"),
)

dev.off()
