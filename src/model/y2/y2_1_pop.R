
# Simulate Year 2 Uptake Population ---------------------------------------

y2_uptake_pop <- uptake_pop(start_pop = total_pop,
                            age_diff = age_diff_y2_c,
                            smk_current = smk_rate_current_y2,
                            smk_prev = smk_rate_prev_y2,
                            screened_prev = y2_screened_input_df,
                            repeats = 0,
                            uptake = uptake_rate_y2)

# Create previously screened dataframes -----------------------------------

y3_screened_input_current_df <- y2_uptake_pop %>%
  group_by(Trial) %>%
  summarise(Total = n())

y3_screened_input_df <- y2_screened_input_df %>%
  rbind(y3_screened_input_current_df) %>%
  group_by(Trial) %>%
  summarise(Total = sum(Total, na.rm = TRUE))
