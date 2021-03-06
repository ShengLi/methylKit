\docType{methods}
\name{getFlanks}
\alias{getFlanks}
\alias{getFlanks,GRanges-method}
\title{Get upstream and downstream adjacent regions to a genomic feature}
\usage{
  getFlanks(grange,flank=2000,clean=T)
}
\arguments{
  \item{grange}{\code{\link[GenomicRanges]{GRanges}} object
  for the feature}

  \item{flank}{number of basepairs for the flanking
  regions}

  \item{clean}{If set to TRUE, flanks overlapping with
  other main features will be trimmed, and overlapping
  flanks will be removed this will remove multiple counts
  when other features overlap with flanks}
}
\value{
  \code{\link[GenomicRanges]{GRanges}} object for flanking
  regions
}
\description{
  The function returns flanking regions on either side of a
  genomic feature. It is useful for getting flanking
  regions such as CpG island shores.
}
\examples{
# read the bed file as GRanges object
bed.file=system.file("extdata", "cpgi.hg18.bed.txt", package = "methylKit")
bed.gr=read.bed(location=bed.file,remove.unsual=TRUE)

# get flanks on the either side
bed.flanks=getFlanks(bed.gr,flank=2000,clean=TRUE)
}

