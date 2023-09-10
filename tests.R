library(dplyr)

new_df <- test_df %>%
  mutate(category = case_when(
    issue %in% development ~ "development")
    )

