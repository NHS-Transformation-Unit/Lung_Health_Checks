
# Simulate Year 2 Uptake Population ---------------------------------------

y2_uptake_pop <- uptake_pop(start_pop = total_pop,
                            age_in = age_in_y2,
                            age_out = age_out_y2,
                            smk_current = smk_rate_current_y2,
                            smk_prev = smk_rate_prev_y2,
                            screened_prev = y2_screened_input,
                            repeats = 0,
                            uptake = uptake_rate_y2)

y2_pop_list <- list(y2_uptake_pop)

y3_screened_input <- y2_uptake_pop %>%
  summarize(total_average = n() / length(unique(Trial)))

y3_screened_input <- y3_screened_input[1, 1]

y3_screened_input <- (y2_screened_input + y3_screened_input)
