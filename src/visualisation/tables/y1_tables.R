
# Y1 summary table creation

## Uptake population table

### Creating input df

y1_uptake_pop_tab <- y2_screened_input_df %>%
  summarize(
    percentile_10 = quantile(Total, probs = 0.1, na.rm = TRUE),
    lower_quartile = quantile(Total, probs = 0.25, na.rm = TRUE),
    median = median(Total, na.rm = TRUE),
    upper_quartile = quantile(Total, probs = 0.75, na.rm = TRUE),
    percentile_90 = quantile(Total, probs = 0.9, na.rm = TRUE)
  )

print(y1_uptake_pop_tab)

### Creating table output

y1_uptake_pop_tab_vis <- y1_uptake_pop_tab %>%
  ungroup() %>%
  rename("10th Percentile" = 1,
         "Lower Quartile" = 2,
         "Median" = 3,
         "Upper Quartile" = 4,
         "90th Percentile" = 5) %>%
  kable(format = "html", align = "lrrrrr") %>%
  kable_styling() %>%
  row_spec(0, background = "#337AB7", color = "white")

