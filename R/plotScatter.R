# funtion to plot the scatter plot of two variables

plotScatter <- function(x,
                        y,
                        color = "blue",
                        regression = FALSE){

  library(ggplot2)

  colRamp <- getColors(color = color, type = "colour")
  fillRamp <- getColors(color = color, type = "fill")

  # basics of the plot
  p <- ggplot(data = data.frame(x = x, y = y),
              aes(x, y))

  # add the points to the graph
  g <- geom_point(colour = colRamp(1), bg = fillRamp(1))

  # add the linear model to the graph

  # theme
  t <- getTheme()

  # colors
  # fill <- scale_fill_manual(values = fillRamp(1))
  # col <- scale_color_manual(values = colRamp(2))

  # x and y labels
  if(!is.null(names(x))) {xlab <- xlab(names(x))} else {xlab <- xlab("x")}
  if(!is.null(names(y))) {ylab <- ylab(names(y))} else {ylab <- ylab("y")}

  plot <- p + g + t + xlab + ylab

  print(plot)

}
