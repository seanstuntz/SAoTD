% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Functions.R
\name{Acquire}
\alias{Acquire}
\title{Acquire Twitter Tweets}
\usage{
Acquire(consumer_key, consumer_secret, access_token, access_secret, HT,
  num_tweets, file_name, distinct = TRUE)
}
\arguments{
\item{consumer_key}{Twitter Application management consumer key.}

\item{consumer_secret}{Twitter Application management consumer secret key.}

\item{access_token}{Twitter Application management access token.}

\item{access_secret}{Twitter Application management access secret key.}

\item{HT}{A single hashtag or a list of hashtags the user has specified.}

\item{num_tweets}{Number of tweets to be acquired per each hashtag.}

\item{file_name}{User desired output .RData file name.}

\item{distinct}{Logical.  If distinct = TRUE, the function removes multiple tweets that originate from the same twitter id at the exact same time.}
}
\value{
A DataFrame.
}
\description{
Function will enable a user to access the twitter API throught the 
[Twitter Developers Account](https://dev.twitter.com/) site.
Once a user has a twitter developers account and has recieved their individual consumer key, 
consumer secret key, access token, and access secret key and acquire tweets they can 
acquire tweets based on a list of hashtags and a requested number of entires per hashtag.
}
\examples{
\dontrun{
consumer_key <- "XXXXXXXXXXXXXXXXXXXXXXXXX"
consumer_secret <- "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
access_token <- "XXXXXXXXXXXXXXXXXX-XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
access_secret <- "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"

hashtags <- c("#job", "#Friday", "#fail", "#icecream", "#random", "#kitten", "#airline")

Acquire(consumer_key = consumer_key, 
        consumer_secret = consumer_secret, 
        access_token = access_token, 
        access_secret = access_secret, 
        HT = hashtags, 
        num_tweets = 10, 
        file_name = "test_tweets.RData",
        distinct = TRUE)
        
load("test_tweets.RData")
}
}
