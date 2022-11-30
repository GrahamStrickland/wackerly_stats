#! /usr/bin/env python3


import numpy as np
import matplotlib.pyplot as plt


# WMS Ex. 1.37 (a) - Relative frequency histogram representing
# number of foxes with certain parasites.


# Input fox-parasite datat to vector
fp = [0] * 69
fp += [1] * 17
fp += [2] * 6
fp += [3] * 3
fp += [4]
fp += [5] * 2
fp += [6]
fp += [8]


# Create the histogram.
fig, ax = plt.subplots()
ax.hist(fp, bins=range(10), weights=np.zeros_like(fp) + 1./len(fp))
ax.set_title("Number of Parasites in Foxes")
ax.set_xlabel("Number of Parasites")
ax.set_ylabel("Relative Frequency")


# Save figure and show.
plt.show()
fig.savefig("ex1_25_b.pdf", dpi=300, format='pdf')
