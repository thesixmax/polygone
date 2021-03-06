% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/polyg_merge_conditional.R
\name{polyg_merge_conditional}
\alias{polyg_merge_conditional}
\title{Iterative conditional merging of polygons in a \code{sf} POLYGON object}
\usage{
polyg_merge_conditional(
  polygons_input,
  contiguity = "rook",
  condition = "area",
  threshold = NULL,
  breakpoint = NULL,
  verbose = FALSE
)
}
\arguments{
\item{polygons_input}{object of class sf, sfc or sfg with geometry type POLYGON or MULTIPOLYGON.}

\item{contiguity}{character; either \code{"queen"} or \verb{"rook}. Default is \code{"rook"}.}

\item{condition}{character; either \code{"area"} or \code{"compactness"}. Default is \code{"area"}}

\item{threshold}{numeric; the upper bound of condition for a polygon to be considered for merging.}

\item{breakpoint}{integer or numeric; number of polygons allowed to be above the threshold.
If set as an integer, the breakpoint refers to an exact number of polygons.
If set as numeric between 0 and 1, refers the to the ceiling of the proportion of the initial number of polygons.}

\item{verbose}{logical; should iterations and running number of polygons be printed? Default is \code{FALSE}.}
}
\value{
An \code{sf} object of type POLYGON containing the merged set of polygons.
}
\description{
Iterative merging of polygons in a \code{sf} POLYGON object according to a condition set by the user.
}
\details{
A polygon is always merged with the neighboring polygon with which it shares
the longest portions of its border. The merging is iterative in the sense that the polygon with the
smallest \code{condition} value is merged first after which the \code{condition} of remaining polygons
is calculated. This process is repeated until the number of polygons to be merged is less than
or equal to the \code{breakpoint} value.
Setting a \code{breakpoint} is in particular recommended when the condition is \code{"compactness"}.
An iteration does not guarantee that the resulting merged polygon has a larger \code{condition}
value than the initial polygon, which may lead to undesirable results when either the \code{condition}
value is small or no \code{breakpoint} is set.
}
