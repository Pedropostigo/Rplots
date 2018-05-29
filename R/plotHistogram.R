# function to plot an histogram
# params

plotHistogram <- function(x,
                          color = "blue",
                          title = ""){
  library(ggplot2)

  colRamp <- getColors(color = color, type = "colour")
  fillRamp <- getColors(color = color, type = "fill")

  # basics of the plot
  p <- ggplot(data = data.frame(x),
              aes(x))

  #histogram
  h <- geom_histogram(aes(y = ..count..), colour = colRamp(1), bg = fillRamp(1), alpha = 1)

  # theme
  t <- getTheme()

  # labels
  l <- labs(title = title)

  # colors
  # fill <- scale_fill_manual(values = fillRamp(1))
  # col <- scale_color_manual(values = colRamp(2))

  plot <- p + h + t + l

  # return the plot or just plot it
  return(plot)
}
