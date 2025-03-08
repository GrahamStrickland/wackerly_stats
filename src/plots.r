# Compile all plots

src_dir <- "src"
plots_dir <- "plots"

dir.create(file.path(plots_dir), showWarnings = FALSE)

setwd(file.path(src_dir, "ch01"))
source("plots.r")

setwd(file.path("..", "ch03"))
source("plots.r")
