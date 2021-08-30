
library(tidyverse)
library(readr)

# Import data -----------------------------------------------------------------

datasaurus <- read_tsv(here::here("data-raw/datasaurus/DatasaurusDozen.tsv"))

# Save ------------------------------------------------------------------------

usethis::use_data(datasaurus, overwrite = TRUE)
