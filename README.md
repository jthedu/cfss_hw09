# Homework 09: Analyzing text data (Julia Du)

Detailed instructions for this homework assignment are [here](https://cfss.uchicago.edu/homework/text-analysis/).

## Executing the files

You can find the source code at [hw09.Rmd](hw09.Rmd) and the rendered report at [hw09.md](hw09.md). 

There's nothing special about running these files - just open the .Rmd files & knit them to get the .md rendered reports.

**Note**: be sure to register for an API key with the geonames.org website. You'll need this key (in this case, your username) to access the info from geonames for running [gapminder.Rmd](gampinder.Rmd). (I discuss this in more detail there as well.)
The same goes for the NYT API. You'll need to register for a key and add it to your .Rprofile before running the [hw08-p2-API.Rmd](hw08-p2-API.Rmd) file.

## Required packages

You should have the following packages installed:

```r
library(reprex)
library(tidyverse)

library(stringr)
library(rvest)
library(glue)

library(jsonlite)
library(httr)
library(lubridate)
```

The 3rd chunk is needed to scrape a website in hw08_p2.Rmd. The 4th chunk is needed to use an API in hw08-p2-API.Rmd.
