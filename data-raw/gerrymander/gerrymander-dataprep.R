# Load packages --------------------------------------------------------------
library(readr)

# Load data ------------------------------------------------------------------
raw_data <- read_csv(here::here("data-raw/gerrymander/isostat_congress_election_gerry.csv"))

# Cleaning: ------------------------------------------------------------------

data_set_name <- raw_data

# Save -----------------------------------------------------------------------

usethis::use_data(gerrymander, overwrite = TRUE)