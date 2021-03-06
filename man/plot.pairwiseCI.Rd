\name{plot.pairwiseCI}
\alias{plot.pairwiseCI}

\title{Plotting the output of pairwiseCI}

\description{
Easy method for plotting estimates and confidence bounds calculated using \code{\link{pairwiseCI}}.
}

\usage{
\method{plot}{pairwiseCI}(x,
 CIvert=NULL, CIlty = 1, CIlwd=1, CIcex=1,
 H0line=NULL, H0lty=1, H0lwd=1,
 main=NULL, ylab="", xlab="",
 \dots )
}

\arguments{
  \item{x}{ an object of class "pairwiseCI", the output of function \kbd{\link{pairwiseCI}} }
  \item{CIvert}{ logical, whether confidence intervals shall be plotted vertical if \kbd{CIvert=TRUE} and horizontal if \kbd{CIvert=FALSE} }
  \item{CIlty}{ integer, giving the line type of the CI, as documented for \kbd{cex} in \kbd{?par}}
  \item{CIlwd}{ integer, giving the line width of the CI, as documented for \kbd{lwd} \kbd{?par}}
  \item{CIcex}{ numerical value giving the size of CIsymbols relative to the default value, see \kbd{cex} in \kbd{?par} }
  \item{H0line}{ Value to be plotted as vertical or horizontal line, depending on the value of \kbd{CIvert}}
  \item{H0lty}{ integer, giving the line type of the CI, as documented for \kbd{lty} in \kbd{?par}}
  \item{H0lwd}{ integer, giving the line width of the CI, as documented for \kbd{lwd} in \kbd{?par}}
  \item{main}{ as \kbd{main} in \kbd{plot}  }
  \item{ylab}{ label of y-axis as \kbd{ylab} in \kbd{plot}, default is no label}
  \item{xlab}{ label of x-axis as \kbd{ylab} in \kbd{plot}, default is no label }
  \item{\dots}{Further arguments to be passed to \kbd{axis}. Note, that arguments \kbd{las}, \kbd{at}, \kbd{labels} are defined internally and can not be set via \dots }

}

\author{ Frank Schaarschmidt }

\examples{

data(Oats)

output <- pairwiseCI(yield ~ Block, data=Oats,
 by="nitro",method="Param.diff", control="I")

# default plot for difference methods:
plot(output)

# some small changes:
plot(output, CIvert=TRUE, H0line=c(-2,0,2), H0lty=c(2,1,2))

output <- pairwiseCI(yield ~ Block, data=Oats,
 by="nitro", method="Param.ratio", control="I")

# default plot for ratio methods:
plot(output)

# some small changes:
plot(output, CIvert=FALSE, H0line=c(0.7, 1, 1/0.7),
 H0lty=c(3,2,3))

}
\keyword{hplot}
\concept{confidence}

