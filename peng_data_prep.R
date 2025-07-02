library(tidyverse)
library(janitor)
library(palmerpenguins)

penguins_clean <- palmerpenguins::penguins_raw %>%
  clean_names() %>%
  tibble()

# colnames(penguins_clean)

penguins_clean <- penguins_clean %>%
  mutate(species = case_when(
    species == "Adelie Penguin (Pygoscelis adeliae)" ~ "Adelie",
    species == "Gentoo penguin (Pygoscelis papua)" ~ "Gentoo",
    species == "Chinstrap penguin (Pygoscelis antarctica)" ~ "Chinstrap",
    TRUE ~ species
  ))

# unique(penguins_clean$species)
# write_csv(penguins_clean, file = "./data/cleaned_2_ver_penguine.csv")
# colnames(penguins_clean)
# peng_clean <- read_csv("./data/cleaned_2_ver_penguine.csv")
# head(peng_clean)
