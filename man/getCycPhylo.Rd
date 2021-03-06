% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/getBioCyc.R
\name{getCycPhylo}
\alias{getCycPhylo}
\title{Get species from BioCyc}
\usage{
getCycPhylo(speList, speType = "BioCyc", whole = FALSE)
}
\arguments{
\item{speList}{The species list that is a vector like 'c("HUMAN", "ECOLI", "ZMOB579138")'. The input speList should be consistent with the parameter 'speType'.}

\item{speType}{It supports two types: "BioCyc" and "regexpr".
BioCyc type is the BioCyc species ID, for exmaple "HUMAN" is the BioCyc ID for the Homo sapiens.The "regexpr" is used for regulare expression search with the Latin name for example "Escherichia coli".}

\item{whole}{Whether or not get the whole BioCyc species list,
and the default value is FALSE.}
}
\value{
Matrix of species information.
}
\description{
BioCyc Database API - Get species information from BioCyc.
}
\details{
Get the BioCyc species information including the BioCyc species ID and the Latin name.
}
\examples{
## search species list from BioCyc ID
getCycPhylo(c('HUMAN', 'ECOLI', 'ZMOB579138'), speType = 'BioCyc')

## search species whose names include 'Escherichia coli'
getCycPhylo('Escherichia coli', speType = 'regexpr')

\dontrun{
## get whole BioCyc species information table
getCycPhylo(whole = TRUE)}
}
\author{
Yulong Niu \email{niuylscu@gmail.com}
}

