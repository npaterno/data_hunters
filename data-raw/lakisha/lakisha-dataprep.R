
# load libraries ----------------------------------------------------------------
library(dplyr)

# load data ---------------------------------------------------------------------
lakisha <- rio::import(here::here("data-raw/lakisha/lakisha_aer.dta")) %>% as_tibble()

# cleaning ----------------------------------------------------------------------

# Just remove formats and labels from Stata 
lakisha <- haven::zap_formats(lakisha)
lakisha <- haven::zap_label(lakisha)

# save --------------------------------------------------------------------------
usethis::use_data(lakisha, overwrite = TRUE)
