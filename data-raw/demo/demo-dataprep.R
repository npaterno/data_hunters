library(readr)
library(janitor)

# load data --------------------------------------------------------------------------

demo <- read_csv(here::here("data-raw/demo/demo.csv"))

# cleaning: clean names using janitor

demo_data <- demo %>% 
  clean_names()

# Save -------------------------------------------------------------------------------

usethis::use_data(demo_data, overwrite = TRUE)
