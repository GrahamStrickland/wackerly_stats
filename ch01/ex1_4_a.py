#! /usr/bin/env python3


import numpy as np
import matplotlib.pyplot as plt


# WMS Ex. 1.4 (a) - Relative frequency histogram representing
# the top 40 stocks on the over-the-counter (OTC) market
# traded on one day.
# Input top 40 stocks.
top40 = [11.88, 6.27, 5.49, 4.81, 4.40, 3.78, 3.44, 3.11, 2.88, 2.68,
         7.99, 6.07, 5.26, 4.79, 4.05, 3.69, 3.36, 3.03, 2.74, 2.63,
         7.15, 5.98, 5.07, 4.55, 3.94, 3.62, 3.26, 2.99, 2.74, 2.62,
         7.13, 5.91, 4.94, 4.43, 3.93, 3.48, 3.20, 2.89, 2.69, 2.61]


# Create the histogram.
fig, ax = plt.subplots()
ax.hist(top40, weights=np.zeros_like(top40) + 1./len(top40))
ax.set_title("Top 40 Stocks on OTC Market")
ax.set_xlabel("Percentage Outstanding Shares Traded")
ax.set_ylabel("Relative Frequency")


# Save figure and show.
plt.show()
fig.savefig("ex1_4_a.pdf", dpi=300, format='pdf')
