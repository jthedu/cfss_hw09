# Homework 09: Analyzing text data (Julia Du)

Detailed instructions for this homework assignment are [here](https://cfss.uchicago.edu/homework/text-analysis/).

## Executing the files

You can find the source code at [hw09.Rmd](hw09.Rmd) and the rendered report at [hw09.md](hw09.md). 

There's nothing special about running these files - just open the .Rmd files & knit them to get the .md rendered reports.

## Required packages

You should have the following packages installed:

```r
library(reprex)
library(tidyverse)
library(lubridate)

library(stringr)
library(rvest)
library(glue)

library(tidytext)
library(reshape2)
library(wordcloud)
library(widyr)
library(ggraph)
library(igraph)

library(textrecipes)
library(topicmodels)
```

The 2nd chunk is needed to scrape a website, the 3rd to do basic sentiment analysis and pairwise correlation, the 4th to generate potential topics through Latent Dirichlet allocation.
