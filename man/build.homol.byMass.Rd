% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/BuildStructandSeries.R
\name{build.homol.byMass}
\alias{build.homol.byMass}
\title{Build Exact Masses for Homologue Series Screening}
\usage{
build.homol.byMass(start_mass, mass_diff, series_name, n_start, n_end, n_adj=0, rt=15)
}
\arguments{
\item{start_mass}{Starting mass for the series. \code{n_start} can be negative if this
is a "central" mass.}

\item{mass_diff}{Mass of the "building block" for the series.}

\item{series_name}{Codename for the series. Short names are recommended for downstream use.}

\item{n_start}{Starting number for series, if negative, \code{mass_diff} is subtracted.}

\item{n_end}{End number for series.}

\item{n_adj}{This adjusts the number for naming.}

\item{rt}{Default \code{15} (minutes); can be adjusted for different systems and anticipated
series behaviour as desired. For first round screening, RT in the middle of the elution is
recommended, such that a symmetrical window over the whole program can be used. This
can also be achieved with \code{rt_window=NULL} in \code{\link{plotEICs}}.}
}
\value{
Returns a \code{n_end-n_start} by \code{3} array containing member names, masses and RTs.
}
\description{
This builds a series of exact masses given a starting mass and a
mass difference and the range \code{n_start} to \code{n_end}, adding a retention
time for direct use in suspect screening. Naming is built on \code{series_name} and
\code{n_start+n}.
}
\examples{
findMz.formula("C16H26O3S1", mode="mH")
las_MmHm <- build.homol.byMass(297.156,14.01565,"LAS",0,4,10)
findMz.formula("C9H10O5S", mode="mH")
spacs_MmHm <- build.homol.byMass(229.0199,14.01565,"SPAC",0,12,3)
c12aes <- build.homol("C14H30O5S","C2H4O","C12AES",1,10)
findMz.formula("C14H30O5S", mode="mH")
c12aes_MmHm <- build.homol.byMass(309.1772,44.026215,"C12AES",0,9,1)

}
\author{
Emma Schymanski <emma.schymanski@uni.lu>
}
\seealso{
\code{\link{build.homol}}.
}

