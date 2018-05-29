# function to obtain the theme

getTheme <- function(){
  library(ggplot2)

  theme <- theme(panel.background = element_rect(fill = "white"),
                 axis.line = element_line(colour = "black"),
                 panel.grid.major = element_line(colour = "gray90"),
                 panel.grid.minor = element_line(colour = "gray92"),
                 plot.title = element_text(hjust = 0.5))

  return(theme)
}
