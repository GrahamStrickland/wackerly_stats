#! /usr/bin/env python3
import numpy as np
import matplotlib.pyplot as plt
from matplotlib import rcParams


# Set parameters for latex encoding/packages.
rcParams['text.usetex'] = True


# WMS Ex. 1.3 - Relative frequency histogram representing the
# amount of radioactive material in the soil of relaimed
# phosphate mining areas in Florida.

# Input radioactivity readings to vector.
radioactive = [.74, 6.46, 1.90, 2.69, .75,
               .32, 9.99, 1.77, 2.41, 1.96,
               1.66, .70, 2.42, .54, 3.36,
               3.59, .37, 1.09, 8.32, 4.06,
               4.55, .76, 2.03, 5.70, 12.48]


# Create the histogram.
fig, ax = plt.subplots()
ax.hist(radioactive, weights=np.zeros_like(radioactive) + 1./len(radioactive))
ax.set_title("Radioactive Material in Florida")
ax.set_xlabel("Amount of $^{238}U$ in Soil")
ax.set_ylabel("Relative Frequency")


# Save figure and show.
plt.show()
fig.savefig("ex1_3.pdf", dpi=300, format='pdf')
