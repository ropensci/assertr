% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/utils.R
\name{has_only_names}
\alias{has_only_names}
\title{Returns TRUE if data.frame or list has only the specified names}
\usage{
has_only_names(...)
}
\arguments{
\item{...}{A arbitrary amount of quoted names to check for}
}
\value{
TRUE is all names exist, FALSE if not
}
\description{
This function checks parent frame environment for a specific set of names; if
more columns are present than those specified, an error is raised.
}
\details{
This is meant to be used with `assertr`'s `verify` function to check
for the existence of specific column names in a `data.frame` that is
piped to `verify`. It can also work on a non-`data.frame` list.
}
\examples{

# The last two columns names are switched in order, but all column names are
# present, so it passes.
verify(
  mtcars,
  has_only_names(c(
    "mpg", "cyl", "disp", "hp", "drat", "wt", "qsec", "vs", "am",
    "carb", "gear"
  ))
)

# More than one set of character strings can be provided.
verify(
  mtcars,
  has_only_names(
    c("mpg", "cyl", "disp", "hp", "drat", "wt", "qsec", "vs", "am"),
    c("carb", "gear")
  )
)

\dontrun{
# The some columns are missing, so it fails.
verify(mtcars, has_only_names("mpg"))
}
}
\seealso{
Other Name verification: 
\code{\link{has_all_names}()}
}
\concept{Name verification}
