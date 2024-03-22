
# Simulate Year 1 Uptake Population ---------------------------------------

y1_uptake_pop <- uptake_pop(start_pop = total_pop,
                            age_in = age_in_y1,
                            age_out = age_out_y1,
                            smk_current = smk_rate_current_y1,
                            smk_prev = smk_rate_prev_y1,
                            screened_prev = 0,
                            repeats = 0,
                            uptake = uptake_rate_y1)

y1_pop_list <- list(y1_uptake_pop)

y2_screened_input <- y1_uptake_pop %>%
  summarize(total_average = n() / length(unique(Trial)))

y2_screened_input <- y2_screened_input[1, 1]
