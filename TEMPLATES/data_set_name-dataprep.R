# Load packages --------------------------------------------------------------

### In this section, load packages needed to read in and clean data. 
### For cleaning data, don't load the whole tidyverse, only what is used
### (i.e. dplyr, tidyr, etc).

# Load data ------------------------------------------------------------------

### Create a folder in the "data-raw" folder with the same name as the data
### set. Place the raw data file (.csv, .tsv, .xlsx, etc) here, then adjust ### the code below to match your data set.

raw_data <- read_csv(here::here("data-raw/data_set_name/name_of_raw_data_file.csv"))

# Cleaning: ------------------------------------------------------------------

### Use this section to clean the data. This includes making the data tidy,
### correcting data types (if needed) and formatting names correctly. All 
### variables should be in snake_case. If your code requires no cleaning, you only need to run the line of code below.

data_set_name <- raw_data

# Save -----------------------------------------------------------------------

usethis::use_data(data_set_name, overwrite = TRUE)