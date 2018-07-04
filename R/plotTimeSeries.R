# function to plot a time series graph
plotTimeSeries <- function(dates, values, group = 1, color = "blue", dateScaling = "d", legend = NULL, title = ""){

  library(ggplot2)

  data <- data.frame(dates = dates, values = values)

  if (length(group) > 1){
    data$groups <- group
  }else
  {
    data$groups <- 1
  }

  color <- getColors(color)

  # basics of the plot
  if(length(group) > 1){
    p <- ggplot(data = data,
                aes(dates, values, group = groups, color = groups))
  } else{
    p <- ggplot(data = data,
                aes(dates, values))
  }

  # geometry = line
  if (length(group) > 1){
    g <- geom_line()

  } else{
    g <- geom_line(color = color(1))
  }

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
