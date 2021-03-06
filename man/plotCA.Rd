% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plotCA.R
\name{plotCA}
\alias{plotCA}
\title{Plot Chronoamperograms}
\usage{
plotCA(filenames = list(file1 = NULL, file2 = NULL), scale = 1,
  legend_text = NULL, legend_position = c("topleft", "topright",
  "bottomleft", "bottomright"), main_title = NULL, line_widths = c(2, 2, 2,
  2, 2), line_types = c(1, 2, 3, 4, 5), point_symbols = c(21, 22, 23, 24,
  25), line_colors = c("blue", "blue", "blue", "blue", "blue"))
}
\arguments{
\item{filenames}{A list giving the names of 1--5 files that contain the results of a simulated chronomperometry experiment.}

\item{scale}{Setting to a value less than 1 adjusts the \emph{y}-axis limits so that the limits are not defined by the current spike.}

\item{legend_text}{Optional vector that contains text to include in a legend. Default is NULL, which surpresses the legend.}

\item{legend_position}{One of \code{topleft}, \code{topright}, \code{bottomleft}, or \code{bottomright}; defaults to \code{topleft}.}

\item{main_title}{An optional main title.}

\item{line_widths}{A vector of line widths for the individual voltammograms; defaults to a common line width of 2, but can be adjusted by supplying a vector with desired values.}

\item{line_types}{A vector of line types for the individual voltammograms; defaults to a set of different line types, but can be adjusted by supplying a vector with desired values.}

\item{point_symbols}{A vector of pch values for plotting points.}

\item{line_colors}{A vector of colors for the individual voltammograms, whether displayed as lines or as points; defaults to a common color, but can be adjusted by supplying a vector with desired values.}
}
\value{
Returns a plot that shows time on the \emph{x}-axis and current on the \emph{y}-axis.
}
\description{
Plots 1--5 chronoamperograms on a single set of axes. The
default plot does not include a legend or a title, but
providing a vector of character strings to legend_text adds a
legend to the final plot, and adding a character string for
main_title adds a title to the plot. Line widths, line types,
line colors, point symbols, and point colors have default
values that can be adjusted. Note: this function accepts both
full data files created using \code{caSim} or reduced data
files created using \code{sampleAmpgram}.
}
\examples{
ca_ex1 = simulateCA(conc.bulk = 0.01, x.units = 100, t.units = 1000)
ca_ex2 = simulateCA(conc.bulk = 0.001, x.units = 100, t.units = 1000)
ca_ex3 = simulateCA(conc.bulk = 0.0001, x.units = 100, t.units = 1000)
plotCA(filenames = list(ca_ex1, ca_ex2, ca_ex3),
  legend_text = c("0.01 M", "0.001 M", "0.0001 M"), scale = 0.1)
}
