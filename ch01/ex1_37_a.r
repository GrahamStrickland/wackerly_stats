# WMS Ex. 1.37 (a) - Relative frequency histogram representing
# number of foxes with certain parasites.

library(ggplot2)

# Input fox-parasite data to vector
fp <- c(rep(0, 69), rep(1, 17), rep(2, 6), rep(3, 3), 4, rep(5, 2), 6, 8)

# Create the histogram.
ggplot(data = data.frame(x = fp)) +
  geom_histogram(
        aes(x, y = after_stat(density), binwidth = 1, fill = "white", color = "black"
    ) +
  ggtitle("Number of Parasites in Foxes") +
  xlab("Number of Parasites") +
  ylab("Relative Frequency") +
  scale_y_continuous(labels = scales::percent) +
  theme_classic()

# Save figure and show.
ggsave("ex1_37_a.pdf", dpi = 300)
