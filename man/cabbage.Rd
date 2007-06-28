\name{cabbage}
\alias{cabbage}
\docType{data}
\title{Yield of cabbage under four different fertilizer treatments}
\description{
  
}
\usage{data(cabbage)}
\format{
  A data frame with 20 observations on the following 2 variables.
  \describe{
    \item{\code{Fert}}{a factor with levels \code{D1} \code{D2} \code{D3} \code{D4}, the different doses of fertilizer}
    \item{\code{yield}}{a numeric vector, cabbage yield}
  }
}

\examples{
data(cabbage)
boxplot(yield~Fert, data=cabbage)
}
\keyword{datasets}