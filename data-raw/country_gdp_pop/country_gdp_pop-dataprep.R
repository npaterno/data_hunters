library(readr)


# load data ---------------------------------------------------------------------
raw_data <- read.csv(here::here("data-raw/country_gdp_pop/country_gdp_pop.csv"))

# cleaning ----------------------------------------------------------------------

# remove non-ASCII character added to column name
colnames(raw_data)[1] <- "country" 


country_gdp_pop<- raw_data

# save --------------------------------------------------------------------------

usethis::use_data(country_gdp_pop, overwrite = TRUE)
