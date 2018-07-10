# clean console and plots
rm(list = ls())
dev.off()
cat("\014")

# import the library
library(Rplots)

# import mtcars dataset
data(mtcars)

# plot hp vs disp
plotScatter(mtcars$disp,
            mtcars$hp,
            title = "MTCARS disp vs hp")

# plot hp vs disp with grouping by am
plotScatter(mtcars$disp,
            mtcars$hp,
            group = as.factor(mtcars$am),
            title = "MTCARS disp vs hp")

# plot hp vs disp with regression
plotScatter(mtcars$disp,
            mtcars$hp,
            title = "MTCARS disp vs hp with regression line",
            regression = T)
