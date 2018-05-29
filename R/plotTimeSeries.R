# function to plot a time series graph
plotTimeSeries <- function(dates, values, group = 1, color = "blue", dateScaling = "d", legend = NULL, title = ""){

  library(ggplot2)

  data <- data.frame(dates = dates, values = values)

  if (group > 1){
    data$groups <- group
  }else
  {
    groups <- 1
  }

  color <- getColors(color)

  # basics of the plot
  p <- ggplot(data = data,
              aes(dates, values, group = groups))

  # geometry = line
  g <- geom_line(color = color(1))

  # theme
  t <- getTheme()

  # scaling of the dates to show
  xscale <- scale_x_date(date_breaks = "1 years")

  # legend
  if (!is.null(legend)){

  }


  plot <- p + g + t + xscale

  print(plot)

  return(plot)

}
