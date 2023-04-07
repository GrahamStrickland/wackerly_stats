# WMS Ex. 1.2 (a) - Relative frequency histogram representing wind
# speeds (in mph) of 45 selected U.S. cities.
# Load required libraries
library(ggplot2)
library(gridExtra)

# Input windspeed data to vector.
windspeeds <- c(8.9, 12.4, 8.6, 11.3, 9.2, 8.8, 6.2, 7.0,
                7.1, 11.8, 10.7, 7.6, 9.1, 9.2, 8.2, 9.0, 8.7,
                9.1, 10.9, 10.3, 9.6, 7.8, 11.5, 9.3, 7.9, 8.8,
                8.8, 12.7, 8.4, 7.8, 5.7, 10.5, 10.5, 9.6, 8.9,
                10.2, 10.3, 7.7, 10.6, 8.3, 8.8, 9.5, 8.8, 9.4)

# Create the histogram.
hist_plot <- hist(windspeeds, breaks=seq(5, 13, by=0.5), plot=FALSE)
hist_data <- data.frame(mids = hist_plot$mids, counts = hist_plot$counts)
hist_data$relative_freq <- hist_data$counts / sum(hist_data$counts)

# Create a barplot with the relative frequencies
bar_plot <- ggplot(hist_data, aes(x = mids, y = relative_freq)) + 
             geom_bar(stat = "identity", width = 0.4, fill = "steelblue", alpha = 0.8) +
             ggtitle("Wind Speeds for 45 U.S. Cities") +
             xlab("Wind Speed (mph)") +
             ylab("Relative Frequency")

# Save and show the plot
pdf("ex1_2_a.pdf", height = 5, width = 7)
grid.arrange(bar_plot)
dev.off()
