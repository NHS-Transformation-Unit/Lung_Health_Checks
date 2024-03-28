

# Screened ----------------------------------------------------------------

summary_y1_screened <- y2_screened_input_df %>%
  mutate(Year = "Year 1")
summary_y2_screened <- y3_screened_input_df %>%
  mutate(Year = "Year 2")
summary_y3_screened <- y4_screened_input_df %>%
  mutate(Year = "Year 3")
summary_y4_screened <- y5_screened_input_df %>%
  mutate(Year = "Year 4")
summary_y5_screened <- y6_screened_input_df %>%
  mutate(Year = "Year 5")

summary_screened_cum <- rbind(summary_y1_screened,
                              summary_y2_screened,
                              summary_y3_screened,
                              summary_y4_screened,
                              summary_y5_screened) %>%
  group_by(Year) %>%
  summarise(percentile_10 = round(quantile(Total, probs = 0.1, na.rm = TRUE), 0),
            lower_quartile = round(quantile(Total, probs = 0.25, na.rm = TRUE), 0),
            median = round(median(Total, na.rm = TRUE), 0),
            upper_quartile = round(quantile(Total, probs = 0.75, na.rm = TRUE), 0),
            percentile_90 = round(quantile(Total, probs = 0.9, na.rm = TRUE), 0)
) %>%
  mutate_if(is.numeric, ~comma(., big.mark = ","))

summary_screened_table <- summary_screened_cum %>%
  rename("10th Percentile" = 2,
         "Lower Quartile" = 3,
         "Median" = 4,
         "Upper Quartile" = 5,
         "90th Percentile" = 6) %>%
  kable(format = "html", align = "lrrrrr") %>% 
  kable_styling() %>%
  row_spec(0, background = "#407EC9", color = "white")


# Positive LHCs -----------------------------------------------------------

summary_y1_lhc_pos <- y1_lhc_pos %>%
  group_by(Trial) %>%
  summarise(Total = n()) %>%
  mutate(Year = "Year 1")

summary_y2_lhc_pos <- y2_lhc_pos %>%
  group_by(Trial) %>%
  summarise(Total = n()) %>%
  mutate(Year = "Year 2")

summary_y3_lhc_pos <- y3_lhc_pos %>%
  group_by(Trial) %>%
  summarise(Total = n()) %>%
  mutate(Year = "Year 3")

summary_y4_lhc_pos <- y4_lhc_pos %>%
  group_by(Trial) %>%
  summarise(Total = n()) %>%
  mutate(Year = "Year 4")

summary_y5_lhc_pos <- y5_lhc_pos %>%
  group_by(Trial) %>%
  summarise(Total = n()) %>%
  mutate(Year = "Year 5")

summary_lhc_pos_cum <- rbind(summary_y1_lhc_pos,
                              summary_y2_lhc_pos,
                              summary_y3_lhc_pos,
                              summary_y4_lhc_pos,
                              summary_y5_lhc_pos) %>%
  group_by(Year) %>%
  summarise(percentile_10 = round(quantile(Total, probs = 0.1, na.rm = TRUE), 0),
            lower_quartile = round(quantile(Total, probs = 0.25, na.rm = TRUE), 0),
            median = round(median(Total, na.rm = TRUE), 0),
            upper_quartile = round(quantile(Total, probs = 0.75, na.rm = TRUE), 0),
            percentile_90 = round(quantile(Total, probs = 0.9, na.rm = TRUE), 0)
  ) %>%
  mutate_if(is.numeric, ~comma(., big.mark = ","))

summary_lhc_pos_table <- summary_lhc_pos_cum %>%
  rename("10th Percentile" = 2,
         "Lower Quartile" = 3,
         "Median" = 4,
         "Upper Quartile" = 5,
         "90th Percentile" = 6) %>%
  kable(format = "html", align = "lrrrrr") %>% 
  kable_styling() %>%
  row_spec(0, background = "#407EC9", color = "white")

# Positive CT Scans -------------------------------------------------------

summary_y1_ct_pos <- y1_ct_list[[6]] %>%
  group_by(Trial) %>%
  summarise(Total = n()) %>%
  mutate(Year = "Year 1")

summary_y2_ct_pos <- y2_ct_list[[6]] %>%
  group_by(Trial) %>%
  summarise(Total = n()) %>%
  mutate(Year = "Year 2")

summary_y3_ct_pos <- y3_ct_list[[6]] %>%
  group_by(Trial) %>%
  summarise(Total = n()) %>%
  mutate(Year = "Year 3")

summary_y4_ct_pos <- y4_ct_list[[6]] %>%
  group_by(Trial) %>%
  summarise(Total = n()) %>%
  mutate(Year = "Year 4")

summary_y5_ct_pos <- y5_ct_list[[6]] %>%
  group_by(Trial) %>%
  summarise(Total = n()) %>%
  mutate(Year = "Year 5")

summary_ct_pos_cum <- rbind(summary_y1_ct_pos,
                             summary_y2_ct_pos,
                             summary_y3_ct_pos,
                             summary_y4_ct_pos,
                             summary_y5_ct_pos) %>%
  group_by(Year) %>%
  summarise(percentile_10 = round(quantile(Total, probs = 0.1, na.rm = TRUE), 0),
            lower_quartile = round(quantile(Total, probs = 0.25, na.rm = TRUE), 0),
            median = round(median(Total, na.rm = TRUE), 0),
            upper_quartile = round(quantile(Total, probs = 0.75, na.rm = TRUE), 0),
            percentile_90 = round(quantile(Total, probs = 0.9, na.rm = TRUE), 0)
  ) %>%
  mutate_if(is.numeric, ~comma(., big.mark = ","))

summary_ct_pos_table <- summary_ct_pos_cum %>%
  rename("10th Percentile" = 2,
         "Lower Quartile" = 3,
         "Median" = 4,
         "Upper Quartile" = 5,
         "90th Percentile" = 6) %>%
  kable(format = "html", align = "lrrrrr") %>% 
  kable_styling() %>%
  row_spec(0, background = "#407EC9", color = "white")

# Confirmed Malignancy ----------------------------------------------------

summary_y1_init_ca <- y1_init_treat_groups_list[[5]] %>%
  group_by(Trial) %>%
  summarise(Total = n()) %>%
  mutate(Year = "Year 1")

summary_y1_m3_ca <- y1_m3_treat_groups_list[[6]] %>%
  group_by(Trial) %>%
  summarise(Total = n()) %>%
  mutate(Year = "Year 1")

summary_y1_m12_ca <- y1_m12_treat_groups_list[[6]] %>%
  group_by(Trial) %>%
  summarise(Total = n()) %>%
  mutate(Year = "Year 1")

summary_y1_m24_ca <- y1_m24_treat_groups_list[[6]] %>%
  group_by(Trial) %>%
  summarise(Total = n()) %>%
  mutate(Year = "Year 1")

summary_y1_ca <- rbind(summary_y1_init_ca,
                            summary_y1_m3_ca,
                            summary_y1_m12_ca,
                            summary_y1_m24_ca) %>%
  group_by(Trial, Year) %>%
  summarise(Total = sum(Total, na.rm = TRUE))

summary_y2_init_ca <- y2_init_treat_groups_list[[5]] %>%
  group_by(Trial) %>%
  summarise(Total = n()) %>%
  mutate(Year = "Year 2")

summary_y2_m3_ca <- y2_m3_treat_groups_list[[6]] %>%
  group_by(Trial) %>%
  summarise(Total = n()) %>%
  mutate(Year = "Year 2")

summary_y2_m12_ca <- y2_m12_treat_groups_list[[6]] %>%
  group_by(Trial) %>%
  summarise(Total = n()) %>%
  mutate(Year = "Year 2")

summary_y2_m24_ca <- y2_m24_treat_groups_list[[6]] %>%
  group_by(Trial) %>%
  summarise(Total = n()) %>%
  mutate(Year = "Year 2")

summary_y2_ca <- rbind(summary_y2_init_ca,
                       summary_y2_m3_ca,
                       summary_y2_m12_ca,
                       summary_y2_m24_ca) %>%
  group_by(Trial, Year) %>%
  summarise(Total = sum(Total, na.rm = TRUE))

summary_y3_init_ca <- y3_init_treat_groups_list[[5]] %>%
  group_by(Trial) %>%
  summarise(Total = n()) %>%
  mutate(Year = "Year 3")

summary_y3_m3_ca <- y3_m3_treat_groups_list[[6]] %>%
  group_by(Trial) %>%
  summarise(Total = n()) %>%
  mutate(Year = "Year 3")

summary_y3_m12_ca <- y3_m12_treat_groups_list[[6]] %>%
  group_by(Trial) %>%
  summarise(Total = n()) %>%
  mutate(Year = "Year 3")

summary_y3_m24_ca <- y3_m24_treat_groups_list[[6]] %>%
  group_by(Trial) %>%
  summarise(Total = n()) %>%
  mutate(Year = "Year 3")

summary_y3_ca <- rbind(summary_y3_init_ca,
                       summary_y3_m3_ca,
                       summary_y3_m12_ca,
                       summary_y3_m24_ca) %>%
  group_by(Trial, Year) %>%
  summarise(Total = sum(Total, na.rm = TRUE))

summary_y4_init_ca <- y4_init_treat_groups_list[[5]] %>%
  group_by(Trial) %>%
  summarise(Total = n()) %>%
  mutate(Year = "Year 4")

summary_y4_m3_ca <- y4_m3_treat_groups_list[[6]] %>%
  group_by(Trial) %>%
  summarise(Total = n()) %>%
  mutate(Year = "Year 4")

summary_y4_m12_ca <- y4_m12_treat_groups_list[[6]] %>%
  group_by(Trial) %>%
  summarise(Total = n()) %>%
  mutate(Year = "Year 4")

summary_y4_m24_ca <- y4_m24_treat_groups_list[[6]] %>%
  group_by(Trial) %>%
  summarise(Total = n()) %>%
  mutate(Year = "Year 4")

summary_y4_ca <- rbind(summary_y4_init_ca,
                       summary_y4_m3_ca,
                       summary_y4_m12_ca,
                       summary_y4_m24_ca) %>%
  group_by(Trial, Year) %>%
  summarise(Total = sum(Total, na.rm = TRUE))

summary_y5_init_ca <- y5_init_treat_groups_list[[5]] %>%
  group_by(Trial) %>%
  summarise(Total = n()) %>%
  mutate(Year = "Year 5")

summary_y5_m3_ca <- y5_m3_treat_groups_list[[6]] %>%
  group_by(Trial) %>%
  summarise(Total = n()) %>%
  mutate(Year = "Year 5")

summary_y5_m12_ca <- y5_m12_treat_groups_list[[6]] %>%
  group_by(Trial) %>%
  summarise(Total = n()) %>%
  mutate(Year = "Year 5")

summary_y5_m24_ca <- y5_m24_treat_groups_list[[6]] %>%
  group_by(Trial) %>%
  summarise(Total = n()) %>%
  mutate(Year = "Year 5")

summary_y5_ca <- rbind(summary_y5_init_ca,
                       summary_y5_m3_ca,
                       summary_y5_m12_ca,
                       summary_y5_m24_ca) %>%
  group_by(Trial, Year) %>%
  summarise(Total = sum(Total, na.rm = TRUE))

summary_ca <- rbind(summary_y1_ca,
                            summary_y2_ca,
                            summary_y3_ca,
                            summary_y4_ca,
                            summary_y5_ca) %>%
  group_by(Year) %>%
  summarise(percentile_10 = round(quantile(Total, probs = 0.1, na.rm = TRUE), 0),
            lower_quartile = round(quantile(Total, probs = 0.25, na.rm = TRUE), 0),
            median = round(median(Total, na.rm = TRUE), 0),
            upper_quartile = round(quantile(Total, probs = 0.75, na.rm = TRUE), 0),
            percentile_90 = round(quantile(Total, probs = 0.9, na.rm = TRUE), 0)
  ) %>%
  mutate_if(is.numeric, ~comma(., big.mark = ","))

summary_ca_table <- summary_ca %>%
  rename("10th Percentile" = 2,
         "Lower Quartile" = 3,
         "Median" = 4,
         "Upper Quartile" = 5,
         "90th Percentile" = 6) %>%
  kable(format = "html", align = "lrrrrr") %>% 
  kable_styling() %>%
  row_spec(0, background = "#407EC9", color = "white")
