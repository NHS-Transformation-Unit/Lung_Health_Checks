
# Simulate Year 3 Uptake Population ---------------------------------------

y3_uptake_pop <- uptake_pop(start_pop = total_pop,
                            age_in = age_in_y3,
                            age_out = age_out_y3,
                            smk_current = smk_rate_current_y3,
                            smk_prev = smk_rate_prev_y3,
                            screened_prev = y3_screened_input,
                            repeats = 0,
                            uptake = uptake_rate_y3)

y3_pop_list <- list(y3_uptake_pop)

y4_screened_input <- y3_uptake_pop %>%
  summarize(total_average = n() / length(unique(Trial)))

y4_screened_input <- y4_screened_input[1, 1]

y4_screened_input <- (y3_screened_input + y4_screened_input)


# Create previously screened dataframe ------------------------------------

y4_screened_input_current_df <- y3_uptake_pop %>%
  group_by(Trial) %>%
  summarise(Total = n())

y4_screened_input_df <- y3_screened_input_df %>%
  rbind(y4_screened_input_current_df) %>%
  group_by(Trial) %>%
  summarise(Total = sum(Total, na.rm = TRUE))
