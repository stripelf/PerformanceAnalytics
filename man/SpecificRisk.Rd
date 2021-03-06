\name{SpecificRisk}
\alias{SpecificRisk}
\title{Specific risk of the return distribution}
\usage{
SpecificRisk(Ra, Rb, Rf = 0, ...)
}
\arguments{
  \item{Ra}{an xts, vector, matrix, data frame, timeSeries
  or zoo object of asset returns}

  \item{Rb}{return vector of the benchmark asset}

  \item{Rf}{risk free rate, in same period as your returns}

  \item{\dots}{any other passthru parameters}
}
\description{
Specific risk is the standard deviation of the error term
in the regression equation.
}
\examples{
data(portfolio_bacon)
print(SpecificRisk(portfolio_bacon[,1], portfolio_bacon[,2])) #expected 0.0329

data(managers)
print(SpecificRisk(managers['1996',1], managers['1996',8]))
print(SpecificRisk(managers['1996',1:5], managers['1996',8]))
}
\author{
Matthieu Lestel
}
\references{
Carl Bacon, \emph{Practical portfolio performance
measurement and attribution}, second edition 2008 p.75
}
\keyword{distribution}
\keyword{models}
\keyword{multivariate}
\keyword{ts}

