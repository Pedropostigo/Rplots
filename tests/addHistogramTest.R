dev.off()
cat("\014")
rm(list = ls())

data(mtcars)

vs <- mtcars[mtcars$vs == 1, "hp"]
novs <- mtcars[mtcars$vs == 0, "hp"]

plot1 <- plotHistogram(vs,
                       title = "CARS HorsePower")

addHistogram(plot1, novs, color = "orange", alpha = 0.25)
