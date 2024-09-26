
# Simulate Year 1 Uptake Population ---------------------------------------

y1_uptake_pop <- uptake_pop(start_pop = total_pop,
                            age_diff =  age_diff_y1_c,
                            smk_current = smk_rate_current_y1,
                            smk_prev = smk_rate_prev_y1,
                            screened_prev = 0,
                            repeats = 0,
                            uptake = uptake_rate_y1)

# Create previously screened dataframes -----------------------------------

y2_screened_input_df <- y1_uptake_pop %>%
  group_by(Trial) %>%
  summarise(Total = n())
