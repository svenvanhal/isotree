% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/isoforest.R
\name{load.isotree.model}
\alias{load.isotree.model}
\title{Load an Isolation Forest model exported from Python}
\usage{
load.isotree.model(file)
}
\arguments{
\item{file}{Path to the saved isolation forest model along with its metadata file,.
and imputer file if produced. Must be a file path, not a file connection.}
}
\value{
An isolation forest model, as if it had been constructed through
\link{isolation.forest}.
}
\description{
Loads a serialized Isolation Forest model as produced and exported
by the Python version of this package. Note that the metadata must be something
importable in R - e.g. column names must be valid for R (numbers are not valid names for R).
It's recommended to visually inspect the `.metadata` file in any case.

This function is not meant to be used for passing models to and from R -
in such case, you can use `saveRDS` and `readRDS` instead.
}
\details{
Internally, this function uses `readr::read_file_raw` (from the `readr` package)
and `jsonlite::fromJSON` (from the `jsonlite` package). Be sure to have those installed
and that the files are readable through them.

Note: If the model was fit to a ``DataFrame`` using Pandas' own Boolean types,
take a look at the metadata to check if these columns will be taken as booleans
(R logicals) or as categoricals with string values `"True"` or `"False"`.
}
\seealso{
\link{export.isotree.model} \link{unpack.isolation.forest}
}
