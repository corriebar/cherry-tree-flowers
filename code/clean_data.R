# Some basic pre-cleaning of the data
library(tidyverse)
library(janitor)

df_raw <- read_csv("data/KyotoFullFlower7.csv", skip=25)

df_temp <- read_csv2("data/reconstructed_smoothed.csv", skip=16 ) %>%
  clean_names() %>%
  mutate_all(~na_if(., -50))

df <- df_raw %>%
  clean_names() %>%
  mutate(reference_name = na_if(reference_name, "-")) %>%
  left_join(df_temp, by="ad") 

write_csv(df, "data/cleaned_data.csv")