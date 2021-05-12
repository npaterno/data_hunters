library(readr)
library(dplyr)
library(janitor)
library(magrittr)

# load data --------------------------------------------------------------------

raw_data <- read_csv(here::here("data-raw/reddit_finance/2020_reddit_finance.csv"),)

# cleaning: 

reddit_finance <- raw_data %>% 
  clean_names()

# save -------------------------------------------------------------------------

usethis::use_data(reddit_finance, overwrite= TRUE)
