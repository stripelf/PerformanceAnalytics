\name{OmegaSharpeRatio}
\alias{OmegaSharpeRatio}
\title{Omega-Sharpe ratio of the return distribution}
\usage{
OmegaSharpeRatio(R, MAR = 0, ...)
}
\arguments{
  \item{R}{an xts, vector, matrix, data frame, timeSeries
  or zoo object of asset returns}

  \item{MAR}{Minimum Acceptable Return, in the same
  periodicity as your returns}

  \item{\dots}{any other passthru parameters}
}
\description{
The Omega-Sharpe ratio is a conversion of the omega ratio
to a ranking statistic in familiar form to the Sharpe
ratio.
}
\details{
To calculate the Omega-Sharpe ration we subtract the target
(or Minimum Acceptable Returns (MAR)) return from the
portfolio return and we divide it by the opposite of the
Downside Deviation.

\deqn{OmegaSharpeRatio(R,MAR) = \frac{r_p -
r_t}{\sum^n_{t=1}\frac{max(r_t - r_i,
0)}{n}}}{OmegaSharpeRatio(R,MAR) = (Rp - Rt) /
-DownsidePotential(R,MAR)}

where \eqn{n} is the number of observations of the entire
series
}
\examples{
data(portfolio_bacon)
MAR = 0.005
print(OmegaSharpeRatio(portfolio_bacon[,1], MAR)) #expected 0.29

MAR = 0
data(managers)
print(OmegaSharpeRatio(managers['1996'], MAR))
print(OmegaSharpeRatio(managers['1996',1], MAR)) #expected 3.60
}
\author{
Matthieu Lestel
}
\references{
Carl Bacon, \emph{Practical portfolio performance
measurement and attribution}, second edition 2008, p.95
}
\keyword{distribution}
\keyword{models}
\keyword{multivariate}
\keyword{ts}

