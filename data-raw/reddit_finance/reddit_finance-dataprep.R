library(readr)
library(dplyr)
library(tidyr)
library(stringr)

# load data --------------------------------------------------------------------

raw_data <- read_csv(here::here("data-raw/reddit_finance/2020_reddit_finance.csv"),)

# cleaning: 
# Note: some cleaning done in Excel.  
# fi = financial independence
# re = retirement
reddit_finance <- raw_data %>% 
  mutate(country = replace_na(country, "United States"), # Add Country
         country = str_to_title(country))  # Adjust for lowercase & uppercase input
  
 test_data <- reddit_finance %>% 
   select(country, pan_experiences) %>% 
   mutate(pan_experiences = strsplit(pan_experiences, ",")) %>% 
   unnest(pan_experiences) %>% 
   pivot_wider(values_from = country, 
               names_from = pan_experiences,
               values_fn = length
   ) #creates multiple columns with the same name
 
# save -------------------------------------------------------------------------

usethis::use_data(reddit_finance, overwrite= TRUE)
