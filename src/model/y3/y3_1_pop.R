
# Update reinvites to account for any missing trials ----------------------

y3_reinvites_update <-data.frame(
                                  Trial = seq(trials),
                                  Total = 0
                                  ) %>%
  left_join(y3_reinvites, by = c("Trial")) %>%
  mutate(Total = coalesce(Total.y, Total.x)) %>%
  select(c(1,4))


# Simulate Year 3 Uptake Population ---------------------------------------

y3_uptake_pop <- uptake_pop(start_pop = total_pop,
                            age_diff = age_diff_y3_c,
                            smk_current = smk_rate_current_y3,
                            smk_prev = smk_rate_prev_y3,
                            screened_prev = y3_screened_input_df,
                            repeats = y3_reinvites_update,
                            uptake = uptake_rate_y3)

# Create previously screened dataframe ------------------------------------

y4_screened_input_current_df <- y3_uptake_pop %>%
  group_by(Trial) %>%
  summarise(Total = n())

y4_screened_input_df <- y3_screened_input_df %>%
  rbind(y4_screened_input_current_df) %>%
  group_by(Trial) %>%
  summarise(Total = sum(Total, na.rm = TRUE))
