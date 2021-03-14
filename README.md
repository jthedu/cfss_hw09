# Homework 09: Analyzing text data (Julia Du)

Detailed instructions for this homework assignment are [here](https://cfss.uchicago.edu/homework/text-analysis/).

## Executing the files

I analyzed *Daily Mail* coverage of Meghan Markle. If you want to see how I got my data, you can open and run the [data_hw09.R](data_hw09.R) script to scrape data from the Daily Mail website. I created this scraping script outside of my hw09.Rmd file because the Daily Mail updates frequently, and I don't want to knit my .Rmd & end up running the scraping code (& thereby getting a totally different list of articles).
> However, I've included a local copy of the dataset I was working with (*the ".data/mail_210310.6pm.csv" file*) and **if you clone my repo, you shouldn't need to run the scraping script.** You'll be able to replicate my results running the hw09.Rmd file alone, which reads in that local copy of data stored in my repo, inside the "data" folder. (And if you do run the scraping R script, you'll get different results since the website has updated since I collect my data.)

Unfortunately, I didn't have enough data to draw interesting conclusions about the Daily Mail's coverage of Markle. It was still great practice with text analysis techniques like sentiment analysis, pairwise correlation, and topic modeling. You can find the Markle analysis's source code at [hw09.Rmd](hw09.Rmd) and the rendered report at [hw09.md](hw09.md). 

To supplement the insufficient data in the Markle analysis, I also analyzed the lyrics of the musical *Hadestown*. The source code is at [hadestown.Rmd](hadestown.Rmd) and can be knitted to produce the rendered report at [hadestown.md](hadestown.md).

In short: If you're purely concerned with replicating my results (for both Markle & Hadestown), you can just open the .Rmd files & knit them to get the .md rendered reports.

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
library(SnowballC)
library(reshape2)
library(wordcloud)
library(widyr)
library(ggraph)
library(igraph)

library(textrecipes)
library(topicmodels)

library(genius) #even easier than geniusr
library(scales)
library(viridis)
library(ggtext)
```

The 2nd chunk is needed to scrape a website, the 3rd to do sentiment analysis and pairwise correlation, the 4th to generate potential topics through Latent Dirichlet allocation, and the 5th to pull data & create certain visualizations for the *Hadestown* analysis.
