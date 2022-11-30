#! /usr/bin/env python3


import numpy as np
import matplotlib.pyplot as plt


# WMS Ex. 1.24 (b) - Relative frequency histogram representing heartrate
# measurements of 20 healthy people at a cadence of 48 cycles per minute
# while engaged in aqua running.


# Input heartrate data to vector.
heartrate = [87, 109, 79, 80, 96, 95, 90, 92, 96, 98,
             101, 91, 78, 112, 94, 98, 94, 107, 81, 96]


# Create the histogram.
fig, ax = plt.subplots()
ax.hist(heartrate, weights=np.zeros_like(heartrate) + 1./len(heartrate))
ax.set_title("Heart Rate of 20 Aqua Runners")
ax.set_xlabel("Heart Rate (cycles per minute)")
ax.set_ylabel("Relative Frequency")


# Save figure and show.
plt.show()
fig.savefig("ex1_24_b.pdf", dpi=300, format='pdf')
