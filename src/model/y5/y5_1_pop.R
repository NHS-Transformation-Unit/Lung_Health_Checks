
# Simulate Year 5 Uptake Population ---------------------------------------

y5_uptake_pop <- uptake_pop(start_pop = total_pop,
                            age_in = age_in_y5,
                            age_out = age_out_y5,
                            smk_current = smk_rate_current_y5,
                            smk_prev = smk_rate_prev_y5,
                            screened_prev = y5_screened_input,
                            repeats = 0,
                            uptake = uptake_rate_y5)

y5_pop_list <- list(y5_uptake_pop)

y6_screened_input <- y5_uptake_pop %>%
  summarize(total_average = n() / length(unique(Trial)))

y6_screened_input <- y6_screened_input[1, 1]

y6_screened_input <- (y5_screened_input + y6_screened_input)


# Create previously screened dataframe ------------------------------------

y6_screened_input_current_df <- y5_uptake_pop %>%
  group_by(Trial) %>%
  summarise(Total = n())

y6_screened_input_df <- y5_screened_input_df %>%
  rbind(y5_screened_input_current_df) %>%
  group_by(Trial) %>%
  summarise(Total = sum(Total, na.rm = TRUE))
