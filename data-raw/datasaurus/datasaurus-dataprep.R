
library(tidyverse)
library(rio)

# Import data -----------------------------------------------------------------

datasaurus <- rio::import("DatasaurusDozen.tsv")

# Save ------------------------------------------------------------------------

usethis::use_data(datasaurus, overwrite = TRUE)
