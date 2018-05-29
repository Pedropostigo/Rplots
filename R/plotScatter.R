# funtion to plot the scatter plot of two variables

plotScatter <- function(x,
                        y,
                        color = "blue",
                        title = "",
                        regression = F){

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

  # title
  tit <- labs(title = title)

  # x and y labels
  if(!is.null(names(x))) {xlab <- xlab(names(x))} else {xlab <- xlab("x")}
  if(!is.null(names(y))) {ylab <- ylab(names(y))} else {ylab <- ylab("y")}

  # REGRESSION ----
  if(regression){
    # fit a linear model
    model <- lm(y ~ x)

    # get coefficients of the fitting line
    n <- model$coefficients[1]
    m <- model$coefficients[2]

    # add the fitted line to the plot
    p <- p + geom_abline(slope = m, intercept = n, color = getColors("orange")(1), alpha = 0.5)

    # get R squared coefficient
    r2 <- summary(model)$adj.r.squared
    p <- p + labs(subtitle = bquote("Fitted line: y = " ~  .(round(m, digits = 2)) ~ "x + " ~
                                      .(round(n, digits = 2)) ~ ". " ~ R^2 ~ "metric: " ~ .(round(r2, digits = 2))))
  }

  plot <- p + g + t + tit + xlab + ylab

  print(plot)

}
