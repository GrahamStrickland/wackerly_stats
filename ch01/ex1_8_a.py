#! /usr/bin/env python3


import numpy as np
import matplotlib.pyplot as plt


# WMS Ex. 1.8 (a) - Relative frequency histogram representing
# the amount of aluminum oxide in 26 samples of Romano-British
# pottery found at four different kiln sites in the United Kingdom.


# Import 26 samples.
al2o3 = [   14.4, 13.8, 14.6, 11.5, 13.8, 10.9, 10.1,
            11.6, 11.1, 13.4, 12.4, 13.1, 12.7, 12.5,
            11.8, 11.6, 18.3, 15.8, 18.0, 18.0, 20.8,
            17.7, 18.3, 16.7, 14.8, 19.1 ]


# Create the histogram.
fig, ax = plt.subplots()
ax.hist(al2o3, weights=np.zeros_like(al2o3) + 1./len(al2o3))
ax.set_title("Romano-British Pottery from United Kingdom")
ax.set_xlabel("Percentage Aluminum Oxide")
ax.set_ylabel("Relative Frequency")


# Save figure and show.
plt.show()
fig.savefig("ex1_8_a.pdf", dpi=300, format='pdf')