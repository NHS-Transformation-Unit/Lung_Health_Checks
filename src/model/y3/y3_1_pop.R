
# Simulate Year 3 Uptake Population ---------------------------------------

y3_uptake_pop <- uptake_pop(start_pop = total_pop,
                            age_in = age_in_y3,
                            age_out = age_out_y3,
                            smk_current = smk_rate_current_y3,
                            smk_prev = smk_rate_prev_y3,
                            screened_prev = y3_screened_input_df,
                            repeats = y3_reinvites,
                            uptake = uptake_rate_y3)

# Create previously screened dataframe ------------------------------------

y4_screened_input_current_df <- y3_uptake_pop %>%
  group_by(Trial) %>%
  summarise(Total = n())

y4_screened_input_df <- y3_screened_input_df %>%
  rbind(y4_screened_input_current_df) %>%
  group_by(Trial) %>%
  summarise(Total = sum(Total, na.rm = TRUE))
