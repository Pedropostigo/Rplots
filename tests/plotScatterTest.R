# clean console and plots
rm(list = ls())
dev.off()
cat("\014")

# import mtcars dataset
data(mtcars)

# plot hp vs disp
plotScatter(mtcars$disp,
            mtcars$hp,
            title = "MTCARS disp vs hp")

# plot hp vs disp with regression
plotScatter(mtcars$disp,
            mtcars$hp,
            title = "MTCARS disp vs hp with regression line",
            regression = T)
