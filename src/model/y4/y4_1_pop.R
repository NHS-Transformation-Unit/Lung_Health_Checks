
# Simulate Year 4 Uptake Population ---------------------------------------

y4_uptake_pop <- uptake_pop(start_pop = total_pop,
                            age_diff = age_diff_y4_c,
                            smk_current = smk_rate_current_y4,
                            smk_prev = smk_rate_prev_y4,
                            screened_prev = y4_screened_input_df,
                            repeats = (y3_reinvites + y4_reinvites),
                            uptake = uptake_rate_y4)

# Created previously screened dataframe -----------------------------------

y5_screened_input_current_df <- y4_uptake_pop %>%
  group_by(Trial) %>%
  summarise(Total = n())

y5_screened_input_df <- y4_screened_input_df %>%
  rbind(y5_screened_input_current_df) %>%
  group_by(Trial) %>%
  summarise(Total = sum(Total, na.rm = TRUE))

