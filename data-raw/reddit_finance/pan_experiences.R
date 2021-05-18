test_data <- reddit_finance %>%  
  mutate(pan_experiences = strsplit(pan_experiences, ",")) %>% 
  unnest(pan_experiences) %>% 
  mutate(pan_experiences = str_trim(pan_experiences)) %>%
  pivot_wider(values_from = index, 
              names_from = pan_experiences
  ) # need to figure out how to make values_from T/F based on %in% pan_experienecs