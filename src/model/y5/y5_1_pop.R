
# Update reinvites to account for any missing trials ----------------------

y5_reinvites_update <-data.frame(
                                  Trial = seq(trials),
                                  Total = 0
                                ) %>%
  left_join(y5_reinvites, by = c("Trial")) %>%
  mutate(Total = coalesce(Total.y, Total.x)) %>%
  select(c(1,4))

y5_reinvites_update_cumul <- union_all(y4_reinvites_update_cumul, y5_reinvites_update) %>%
  group_by(Trial) %>%
  summarise(Total = sum(Total, na.rm = TRUE))


# Simulate Year 5 Uptake Population ---------------------------------------

y5_uptake_pop <- uptake_pop(start_pop = total_pop,
                            age_diff = age_diff_y5_c,
                            smk_current = smk_rate_current_y5,
                            smk_prev = smk_rate_prev_y5,
                            screened_prev = y5_screened_input_df,
                            repeats = y5_reinvites_update_cumul,
                            uptake = uptake_rate_y5)

# Create previously screened dataframe ------------------------------------

y6_screened_input_current_df <- y5_uptake_pop %>%
  group_by(Trial) %>%
  summarise(Total = n())

  y6_screened_input_df <- y5_screened_input_df %>%
  rbind(y6_screened_input_current_df) %>%
  group_by(Trial) %>%
  summarise(Total = sum(Total, na.rm = TRUE))
