% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plate.R
\name{analyze}
\alias{analyze}
\title{Run analysis on a ddPCR plate}
\usage{
analyze(plate, restart = FALSE)
}
\arguments{
\item{plate}{A ddPCR plate}

\item{restart}{If \code{TRUE}, then run the analysis from the beginning;
othrewise, continue from the last step that was performed.}
}
\value{
The analyzed ddPCR plate
}
\description{
Every ddPCR plate has a set of defined steps that are taken in order, that
together constitute "analyzing" the plate.  Calling the \code{analyze} function
will perform all the analysis steps, which may take several minutes. Running
the analysis will classify the droplets in the plate into clusters (available
via \code{\link[ddpcr]{plate_data}}) and will add variables to the plate
metadata (available via \code{\link[ddpcr]{plate_meta}}).
}
\details{
This function will run an analysis to completion. If you want to run each
step one at a time, use \code{\link[ddpcr]{next_step}}.
}
\note{
Most analysis steps result in some progress messages being printed to
the screen. You can turn off these messages by disabling the verbose option
with the command \code{options(ddpcr.verbose = FALSE)}.
}
\examples{
\dontrun{
plate <- new_plate(sample_data_dir(), type = plate_types$custom_thresholds)
plate <- analyze(plate)
} 
}
\seealso{
\code{\link[ddpcr]{next_step}}\cr
\code{\link[ddpcr]{plot.ddpcr_plate}}\cr
\code{\link[ddpcr]{new_plate}}\cr
\code{\link[ddpcr]{steps}}\cr
\code{\link[ddpcr]{plate_data}}\cr
\code{\link[ddpcr]{plate_meta}}
}
