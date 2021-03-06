% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/scmake.R
\name{RDSify_build_status}
\alias{RDSify_build_status}
\title{Copy info from build/status to .remake/objects}
\usage{
RDSify_build_status(new_only = FALSE,
  remake_file = getOption("scipiper.remake_file"))
}
\arguments{
\item{new_only}{logical. It's possible to corrupt a shared-cache repo. One
way this happens seems to be something about collaborating on .ind and
build/status files via git. Another way to corrupt it is by calling
remake::make after git pulling new build/status files and before calling
scmake. Therefore, (1) this flag provides recourse; set new_only=FALSE to
overwrite all .remake files for which we have build/status files, (2) the
default is FALSE, and (3) still, you should avoid calling remake::make in a
shared-cache repo; call scmake instead.}

\item{remake_file}{filename of the remake YAML file for which build/status
files should be RDSified}
}
\description{
Copy build status files from versionable text to .remake binary (.rds file)
}
\keyword{internal}
