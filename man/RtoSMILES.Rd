% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/BuildStructandSeries.R
\name{RtoSMILES}
\alias{RtoSMILES}
\title{Build SMILES from single R groups}
\usage{
RtoSMILES(genSmiles, R_format, R_smiles, R_range)
}
\arguments{
\item{genSmiles}{A "Generic" \code{SMILES} code to expand, with R groups encoded in square brackets.
The R group to replace is defined in R_format.}

\item{R_format}{The format of the R group to replace, including square brackets, e.g.
\code{[R], [R1], [R2]}.}

\item{R_smiles}{The valid \code{SMILES} code representing the repeating unit. Examples
\code{"C", "CCO"}. Must be valid \code{SMILES} to generate valid structures.
Use with caution - it is highly recommended to view the structures with
\code{\link{renderSMILES.CDKdepict}} or \code{\link{renderSMILES.rcdk}} to detect unwanted
behaviour.}

\item{R_range}{The range for each R group (start-end).}
}
\value{
Returns a vector containing the resulting SMILES codes
}
\description{
This works behind the scenes of \code{buildSmiles} on individual R groups, but can be
used independently. This performs basic string manipulation on SMILES codes to generate
systematic homologues, facilitaing the generation of identifiers for structures
that may not exist in databases for use in MS workflows.
This requires a decent understanding of SMILES as the text manipulation can have
unexpected consequences.
}
\examples{
RtoSMILES("OC(=O)[R]","[R]","C",c(1,5))
test_smiles <- "P(=O)(OC[C@H](COP(=O)(O)OC[C@H](OC(=O)[R2])COC(=O)[R1])O)(O)OC[C@H](OC(=O)[R4])COC(=O)[R3]"
RtoSMILES(test_smiles,"[R1]","C",c(1,5))

}
\author{
Emma Schymanski <emma.schymanski@uni.lu>
}
\seealso{
\code{\link{buildSmiles}}, \code{\link{splitRrange}}, \code{\link{adjustRgroup}},
To view created SMILES: \code{\link{renderSMILES.CDKdepict}}, \code{\link{renderSMILES.rcdk}}.
}

