# WMS Ex. 1.37 (a) - Relative frequency histogram representing
# number of foxes with certain parasites.


fp <- c(
    rep(0, 69), rep(1, 17), rep(2, 6),
    rep(3, 3), 4, rep(5, 2), 6, 8
)


hist(
    fp,
    freq = FALSE,
    main = "Number of Parasites in Foxes",
    xlab = "Number of Parasites",
    ylab = "Relative Frequency"
)


pdf("ex1_37_a.pdf")
dev.off()
