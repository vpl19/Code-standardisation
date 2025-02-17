% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/map_function.R
\name{map_function}
\alias{map_function}
\title{plot a map with density and small countries as dots inside the map}
\usage{
map_function(
  data_map,
  world_map,
  scale_range = NULL,
  colour_scale = NULL,
  type = "level1",
  plot_title = NULL,
  plot_type = "standalone"
)
}
\arguments{
\item{data_map}{The data frame with the value to colour the map in variable 'colour_val'}

\item{world_map}{The shape file for map}

\item{scale_range}{The min and max of values for the colouring variable, decided in function if NULL}

\item{colour_scale}{Colour scheme used for plotting, decided in function if NULL}

\item{type}{The type of variable being plotted, which decides the colour scale (unless provided) and formatting of legend, title and inset density chart}

\item{plot_title}{Add plot title if provided}

\item{plot_type}{default 'standalone'; if 'composite' then font sizes are made larger}
}
\value{
A ggplot grob object: can be used in egg/ggpubr ggarrange
}
\description{
plot a map with density and small countries as dots inside the map
}
\examples{
p <- map_function(data \%>\% filter(sex == 'Women' & year = 2022),
                  world_map,
                  c(min(data$colour_val[data$year == 2022]), max(data$colour_val[data$year == 2022])),
                  plot_title = 'Women 2022')
}
