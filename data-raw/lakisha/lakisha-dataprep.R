
# load libraries ----------------------------------------------------------------
library(tidyverse)

# load data ---------------------------------------------------------------------
(lakisha <- rio::import("lakisha_aer.dta") %>% as_tibble())

# cleaning ----------------------------------------------------------------------

# Just remove formats and labels from Stata
lakisha <- haven::zap_formats(lakisha)
lakisha <- haven::zap_label(lakisha)

# save --------------------------------------------------------------------------
usethis::use_data(lakisha, overwrite = TRUE)
