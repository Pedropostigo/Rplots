# import data to plot histogram: CARS DATASET
dev.off()
cat("\014")
rm(list = ls())

data(mtcars)
plotHistogram(mtcars$hp,
              title = "CARS HorsePower")
