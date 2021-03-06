% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/BuildStructandSeries.R
\name{buildMemberLabels}
\alias{buildMemberLabels}
\title{Build Labels for Members of a Homologue Series}
\usage{
buildMemberLabels(SeriesName, n_start, n_total, smiles_list=NULL, addFormula=FALSE)
}
\arguments{
\item{SeriesName}{A general name for the series, preferably short (abbreviation).}

\item{n_start}{The starting number for the members in the series.}

\item{smiles_list}{(optional) If present, used to calculate formulas for \code{addFormula=TRUE}.}

\item{nR1toN}{The total number of members that need names.}

\item{RDB_R1toN}{(optional) If \code{TRUE}, adds molecular formula to the labels.}
}
\value{
Returns a label that can be used to annotate individual structures in CDK Depict
}
\description{
This function generates labels for members of a homologue series generated with
the \code{buildSmiles} function (or also in general).
}
\examples{
genSmiles <- "OS(=O)(=O)c1ccc(cc1)C([R1])[R2]"
nR1toN_in <- splitRrange(genSmiles,"{9-13}")
LAS_smiles <- buildSmiles(genSmiles,"{C,C}",nR1toN_in)
LAS_smiles_trim <- trimBuiltSmiles(LAS_smiles)

# now create labels
buildMemberLabels("LAS",9,5)
LAS_trim_labels <- buildMemberLabels("LAS",9,5, LAS_smiles_trim, addFormula = TRUE)
# to write a file that can be copied directly to CDK depict:
# write.table(cbind(LAS_smiles_trim, LAS_trim_labels),"LAS_trim_smiles_labels.smi",
# quote=F, row.names=F, col.names=F)

}
\author{
Emma Schymanski <emma.schymanski@uni.lu>
}
\seealso{
\code{\link{buildSmiles}}, \code{\link{buildSeriesLabel}}.
}

