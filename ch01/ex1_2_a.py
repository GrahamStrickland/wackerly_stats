#! /usr/bin/env python3


import numpy as np
import matplotlib.pyplot as plt


# WMS Ex. 1.2 (a) - Relative frequency histogram representing wind
# speeds (in mph) of 45 selected U.S. cities.

# Input windspeed data to vector.
windspeeds = [ 8.9, 12.4, 8.6, 11.3, 9.2, 8.8, 6.2, 7.0,
               7.1, 11.8, 10.7, 7.6, 9.1, 9.2, 8.2, 9.0, 8.7,
               9.1, 10.9, 10.3, 9.6, 7.8, 11.5, 9.3, 7.9, 8.8,
               8.8, 12.7, 8.4, 7.8, 5.7, 10.5, 10.5, 9.6, 8.9,
               10.2, 10.3, 7.7, 10.6, 8.3, 8.8, 9.5, 8.8, 9.4]


# Create the histogram.
fig, ax = plt.subplots()
ax.hist(windspeeds, weights=np.zeros_like(windspeeds) + 1./len(windspeeds))
ax.set_title("Wind Speeds for 45 U.S. Cities")
ax.set_xlabel("Wind Speed (mph)")
ax.set_ylabel("Relative Frequency")


# Save figure and show.
plt.show()
fig.savefig("ex1_2_a.pdf", dpi=300, format='pdf')