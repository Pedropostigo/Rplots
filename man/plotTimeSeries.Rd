\name{plotTimeSeries}
\alias{plotTimeSeries}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Plot
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
plotTimeSeries(dates, values, group = 1, color = "blue", dateScaling = "d", legend = NULL, title = "")
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{dates}{
Vector containing the dates to be ploted in the x axis
}
  \item{values}{
Values asociated with the dates to be ploted in the y axis
}
  \item{group}{
If a vector containing to which group pertain each data point is provided, two time series will be plotted on the same graph
}
  \item{color}{
%%     ~~Describe \code{color} here~~
}
  \item{dateScaling}{
%%     ~~Describe \code{dateScaling} here~~
}
  \item{legend}{
%%     ~~Describe \code{legend} here~~
}
  \item{title}{
%%     ~~Describe \code{title} here~~
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{
%% ~put references to the literature/web site here ~
}
\author{
%%  ~~who you are~~
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
##---- Should be DIRECTLY executable !! ----
##-- ==>  Define data, use random,
##--	or do  help(data=index)  for the standard data sets.

## The function is currently defined as
function (dates, values, group = 1, color = "blue", dateScaling = "d",
    legend = NULL, title = "")
{
    library(ggplot2)
    data <- data.frame(dates = dates, values = values)
    if (group > 1) {
        data$groups <- group
    }
    else {
        groups <- 1
    }
    color <- getColors(color)
    p <- ggplot(data = data, aes(dates, values, group = groups))
    g <- geom_line(color = color(1))
    t <- getTheme()
    xscale <- scale_x_date(date_breaks = "1 years")
    if (!is.null(legend)) {
    }
    plot <- p + g + t + xscale
    print(plot)
    return(plot)
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
