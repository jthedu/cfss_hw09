# Scraping data for Daily Mail/Meghan Markle analysis (aka for hw09.Rmd)
## doing this in a separate script since Daily Mail constantly updates site

library(tidyverse)
library(stringr)
library(rvest)

# create folder to store local copies of df
dir.create("./data")

mail <- read_html("https://www.dailymail.co.uk/tvshowbiz/meghan-markle/index.html")

mail_nodes <- html_nodes(mail, ".sport span , #content p, .linkro-ccow, .linkro-darkred a")

mail_vec <- mail_nodes %>%
  html_text()

mail_vec <- 
  mail_vec[c(-1, -400)] %>%
  append(c("", ""), after = 2) 
#adding spaces so that each article is divided into 5 elements

almost_mail <- mail_vec %>%
  split(ceiling(seq_along(mail_vec)/5)) %>%
  as_tibble() # make a df

# store local copy of dataframe
almost_mail %>%
  write_csv("./data/mail_210310.6pm.csv") 
# this file name is specific to when I scraped the website
