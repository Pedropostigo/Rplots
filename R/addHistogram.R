# function to add an histogram to a histogram plot

addHistogram <- function(histogram,
                         x,
                         color = "orange",
                         alpha = 1){
  library(ggplot2)

  colRamp <- getColors(color = color, type = "colour")
  fillRamp <- getColors(color = color, type = "fill")


  # loop through all the layers of the previous plot to change things
  for (i in 1:length(histogram$layers)){

    # set a new alpha for all the layers
    histogram$layers[[i]]$aes_params$alpha <- alpha
  }

  # TODO: check if any color is repeated to change the new color

  # define the ne histogram to be added to the plot
  h <- geom_histogram(data = data.frame(x),
                      aes(y = ..count..),
                      colour = colRamp(1),
                      bg = fillRamp(1),
                      alpha = alpha)

  plot <- histogram + h

  return(plot)
}
