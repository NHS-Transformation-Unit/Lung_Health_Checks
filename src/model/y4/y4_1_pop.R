
# Simulate Year 4 Uptake Population ---------------------------------------

y4_uptake_pop <- uptake_pop(start_pop = total_pop,
                            age_in = age_in_y4,
                            age_out = age_out_y4,
                            smk_current = smk_rate_current_y4,
                            smk_prev = smk_rate_prev_y4,
                            screened_prev = y4_screened_input,
                            repeats = 0,
                            uptake = uptake_rate_y4)

y4_pop_list <- list(y4_uptake_pop)

y5_screened_input <- y4_uptake_pop %>%
  summarize(total_average = n() / length(unique(Trial)))

y5_screened_input <- y5_screened_input[1, 1]

y5_screened_input <- (y4_screened_input + y5_screened_input)
