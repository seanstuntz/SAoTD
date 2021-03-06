% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Functions.R
\name{Distribution}
\alias{Distribution}
\title{Twitter Hashtag or Topic Distribution}
\usage{
Distribution(DataFrameTidyScores, HT_Topic, binwidth = 1, color = "black",
  fill = "white")
}
\arguments{
\item{DataFrameTidyScores}{DataFrame of Twitter Data that has been tidy'd and scored.}

\item{HT_Topic}{If using hashtag data select:  "hashtag".  If using topic data select:  "topic".}

\item{binwidth}{The width of the bins.  Default is 1.}

\item{color}{The user selected color to highlight the bins.}

\item{fill}{The interior color of the bins.}
}
\value{
A facet wrap ggplot.
}
\description{
Determines the scores distribution by hashtag or topic for Twitter data.
}
\examples{
\dontrun{
library(SAoTD)
data <- raw_tweets
tidy_data <- Tidy(DataFrame = data)
score_data <- Scores(DataFrameTidy = tidy_data, 
                    HT_Topic = "hashtag") 
Dist <- Distribution(DataFrameTidyScores = score_data,
                     HT_Topic = "hashtag",
                     binwidth = 1,
                     color = "black", 
                     fill = "white")
Dist
}
}
