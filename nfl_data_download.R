# nfl_data_download.R
# R script to download data from the nflreadr package for CAP4773 Assignment 1.

# 1. Install necessary packages if not already installed
# install.packages("nflreadr")
# install.packages("readr")

# 2. Load libraries
library(nflreadr)
library(readr)
library(dplyr)

# 3. Define the desired years for analysis (e.g., 2018 to 2023)
seasons <- 2018:2023

# 4. Download play-by-play data for the selected seasons
# This may take a few minutes depending on internet speed.
pbp_data <- load_pbp(seasons)

# 5. Select key columns necessary for predicting offensive success (down, distance, field position, result)
# We focus on plays relevant to drives that start in standard situations.
relevant_cols <- pbp_data %>%
  select(
    game_id,
    play_id,
    down,
    ydstogo,
    yardline_100,
    shotgun,
    no_huddle,
    rush_attempt,
    pass_attempt,
    first_down_rush,
    first_down_pass,
    touchdown,
    qb_hit,
    fumble_lost,
    interception
  ) %>%
  # Filter for plays where down, ydstogo, and yardline_100 are defined (i.e., not kickoffs, penalties, etc.)
  filter(!is.na(down) & !is.na(ydstogo) & !is.na(yardline_100))

# 6. Define the output path
output_path <- "/Users/tommyrose/Desktop/CAP4773_Ass1/downloaded_nfl_data.csv"

# 7. Save the filtered DataFrame to a CSV file
write_csv(relevant_cols, output_path)

print(paste("Data successfully downloaded and saved to:", output_path))