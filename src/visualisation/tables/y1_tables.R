
# Y1 summary table creation

library(scales)

## Uptake Population Table -------------------------------------------------

### Creating input df

y1_uptake_pop_tab <- y2_screened_input_df %>%
  summarize(
    percentile_10 = round(quantile(Total, probs = 0.1, na.rm = TRUE), 0),
    lower_quartile = round(quantile(Total, probs = 0.25, na.rm = TRUE), 0),
    median = round(median(Total, na.rm = TRUE), 0),
    upper_quartile = round(quantile(Total, probs = 0.75, na.rm = TRUE), 0),
    percentile_90 = round(quantile(Total, probs = 0.9, na.rm = TRUE), 0)
  )

y1_uptake_pop_tab_formatted <- y1_uptake_pop_tab %>%
  mutate_if(is.numeric, ~comma(., big.mark = ","))

### Creating table output

y1_uptake_pop_tab_vis <- y1_uptake_pop_tab_formatted %>%
  ungroup() %>%
  rename("10th Percentile" = 1,
         "Lower Quartile" = 2,
         "Median" = 3,
         "Upper Quartile" = 4,
         "90th Percentile" = 5) %>%
  kable(format = "html", align = "lrrrrr") %>%
  kable_styling() %>%
  row_spec(0, background = "#407EC9", color = "white")

## lhc activity table ------------------------------------------------------

### Creating input df

y1_lhc_activity_tab <- y1_lhc_list[[3]] %>%
  group_by(lhc_initial_dna_rebook) %>%
  summarize(
    percentile_10 = round(quantile(Total, probs = 0.1, na.rm = TRUE), 0),
    lower_quartile = round(quantile(Total, probs = 0.25, na.rm = TRUE), 0),
    median = round(median(Total, na.rm = TRUE), 0),
    upper_quartile = round(quantile(Total, probs = 0.75, na.rm = TRUE), 0),
    percentile_90 = round(quantile(Total, probs = 0.9, na.rm = TRUE), 0)
  )

y1_lhc_activity_tab_formatted <- y1_lhc_activity_tab %>%
  mutate_if(is.numeric, ~comma(., big.mark = ","))

### Creating table output

y1_lhc_activity_tab_vis <- y1_lhc_activity_tab_formatted %>%
  ungroup() %>%
  rename("Attendance Outcome" = 1,
         "10th Percentile" = 2,
         "Lower Quartile" = 3,
         "Median" = 4,
         "Upper Quartile" = 5,
         "90th Percentile" = 6) %>%
  kable(format = "html", align = "lrrrrr") %>%
  kable_styling() %>%
  row_spec(0, background = "#407EC9", color = "white")

