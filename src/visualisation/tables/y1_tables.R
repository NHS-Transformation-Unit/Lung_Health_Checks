
# Y1 summary table creation

## Uptake Population Table -------------------------------------------------

### Creating input df

trial_df <- data.frame("Trial" = seq(1:trials))

y2_screened_input_df <- trial_df %>%
  left_join(y2_screened_input_df, by = c("Trial")) %>%
  mutate(Total = replace_na(Total, 0))

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
  ungroup() %>%
  complete(Trial, lhc_initial_dna_rebook, fill = list(Total = 0)) %>%
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


# lhc outcomes table ------------------------------------------------------

### Creating input df

y1_lhc_outcome_tab <- y1_lhc_list[[4]] %>%
  ungroup() %>%
  complete(Trial, lhc_outcome, fill = list(Total = 0)) %>%
  group_by(lhc_outcome) %>%
  summarize(
    percentile_10 = round(quantile(Total, probs = 0.1, na.rm = TRUE), 0),
    lower_quartile = round(quantile(Total, probs = 0.25, na.rm = TRUE), 0),
    median = round(median(Total, na.rm = TRUE), 0),
    upper_quartile = round(quantile(Total, probs = 0.75, na.rm = TRUE), 0),
    percentile_90 = round(quantile(Total, probs = 0.9, na.rm = TRUE), 0)
  )

y1_lhc_outcome_tab_formatted <- y1_lhc_outcome_tab %>%
  mutate_if(is.numeric, ~comma(., big.mark = ","))

### Creating table output

y1_lhc_outcome_tab_vis <- y1_lhc_outcome_tab_formatted %>%
  ungroup() %>%
  rename("LHC Outcome" = 1,
         "10th Percentile" = 2,
         "Lower Quartile" = 3,
         "Median" = 4,
         "Upper Quartile" = 5,
         "90th Percentile" = 6) %>%
  kable(format = "html", align = "lrrrrr") %>%
  kable_styling() %>%
  row_spec(0, background = "#407EC9", color = "white")


# lhc opt-out table -------------------------------------------------------

### Creating input df

y1_lhc_opt_out_tab <- y1_lhc_list[[2]] 

y1_lhc_opt_out_tab <- y1_lhc_opt_out_tab %>%
  group_by(Trial, lhc_initial_dna_rebook) %>%
  summarise("Total" = n())

y1_lhc_opt_out_tab <- y1_lhc_opt_out_tab %>%
  ungroup() %>%
  complete(Trial, lhc_initial_dna_rebook, fill = list(Total = 0)) %>%
  group_by(lhc_initial_dna_rebook) %>%
  summarize(
    percentile_10 = round(quantile(Total, probs = 0.1, na.rm = TRUE), 0),
    lower_quartile = round(quantile(Total, probs = 0.25, na.rm = TRUE), 0),
    median = round(median(Total, na.rm = TRUE), 0),
    upper_quartile = round(quantile(Total, probs = 0.75, na.rm = TRUE), 0),
    percentile_90 = round(quantile(Total, probs = 0.9, na.rm = TRUE), 0)
  )

y1_lhc_opt_out_tab_formatted <- y1_lhc_opt_out_tab %>%
  mutate_if(is.numeric, ~comma(., big.mark = ","))

### Creating table output

y1_lhc_opt_out_tab_vis <- y1_lhc_opt_out_tab_formatted %>%
  select(-1) %>%
  ungroup() %>%
  rename("10th Percentile" = 1,
         "Lower Quartile" = 2,
         "Median" = 3,
         "Upper Quartile" = 4,
         "90th Percentile" = 5) %>%
  kable(format = "html", align = "lrrrrr") %>%
  kable_styling() %>%
  row_spec(0, background = "#407EC9", color = "white")


# lhc negative re-invites table -------------------------------------------

### Creating input df

y1_lhc_neg_ri_tab <- y1_lhc_list[[5]] %>%
  ungroup() %>%
  complete(Trial, lhc_negative_ri, fill = list(Total = 0)) %>%
  filter(lhc_negative_ri == "Invite") %>%
  group_by(lhc_negative_ri) %>%
  summarize(
    percentile_10 = round(quantile(Total, probs = 0.1, na.rm = TRUE), 0),
    lower_quartile = round(quantile(Total, probs = 0.25, na.rm = TRUE), 0),
    median = round(median(Total, na.rm = TRUE), 0),
    upper_quartile = round(quantile(Total, probs = 0.75, na.rm = TRUE), 0),
    percentile_90 = round(quantile(Total, probs = 0.9, na.rm = TRUE), 0)
  )

y1_lhc_neg_ri_tab_formatted <- y1_lhc_neg_ri_tab %>%
  mutate_if(is.numeric, ~comma(., big.mark = ","))

### Creating table output

y1_lhc_neg_ri_tab_vis <- y1_lhc_neg_ri_tab_formatted %>%
  select(-1) %>%
  ungroup() %>%
  rename("10th Percentile" = 1,
         "Lower Quartile" = 2,
         "Median" = 3,
         "Upper Quartile" = 4,
         "90th Percentile" = 5) %>%
  kable(format = "html", align = "lrrrrr") %>%
  kable_styling() %>%
  row_spec(0, background = "#407EC9", color = "white")


# ct activity table -------------------------------------------------------

### Creating input df

y1_ct_activity_tab <- y1_ct_list[[2]] %>%
  ungroup() %>%
  complete(Trial, ct_rebook, fill = list(Total = 0)) %>%
  group_by(ct_rebook) %>%
  summarize(
    percentile_10 = round(quantile(Total, probs = 0.1, na.rm = TRUE), 0),
    lower_quartile = round(quantile(Total, probs = 0.25, na.rm = TRUE), 0),
    median = round(median(Total, na.rm = TRUE), 0),
    upper_quartile = round(quantile(Total, probs = 0.75, na.rm = TRUE), 0),
    percentile_90 = round(quantile(Total, probs = 0.9, na.rm = TRUE), 0)
  )

y1_ct_activity_tab_formatted <- y1_ct_activity_tab %>%
  mutate_if(is.numeric, ~comma(., big.mark = ","))

### Creating table output

y1_ct_activity_tab_vis <- y1_ct_activity_tab_formatted %>%
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


# ct scan outcomes table ------------------------------------------------------

### Creating input df

y1_ct_scan_outcomes_tab <- y1_ct_list[[3]] %>%
  ungroup() %>%
  complete(Trial, ct_outcome, fill = list(Total = 0)) %>%
  group_by(ct_outcome) %>%
  summarize(
    percentile_10 = round(quantile(Total, probs = 0.1, na.rm = TRUE), 0),
    lower_quartile = round(quantile(Total, probs = 0.25, na.rm = TRUE), 0),
    median = round(median(Total, na.rm = TRUE), 0),
    upper_quartile = round(quantile(Total, probs = 0.75, na.rm = TRUE), 0),
    percentile_90 = round(quantile(Total, probs = 0.9, na.rm = TRUE), 0)
  )

y1_ct_scan_outcomes_tab_formatted <- y1_ct_scan_outcomes_tab %>%
  mutate_if(is.numeric, ~comma(., big.mark = ","))

### Creating table output

y1_ct_scan_outcomes_tab_vis <- y1_ct_scan_outcomes_tab_formatted %>%
  ungroup() %>%
  rename("CT Scan Outcome" = 1,
         "10th Percentile" = 2,
         "Lower Quartile" = 3,
         "Median" = 4,
         "Upper Quartile" = 5,
         "90th Percentile" = 6) %>%
  kable(format = "html", align = "lrrrrr") %>%
  kable_styling() %>%
  row_spec(0, background = "#407EC9", color = "white")


# ct negative follow up table ---------------------------------------------

### Creating input df

y1_ct_neg_fu_tab <- y1_ct_list[[8]] %>%
  ungroup() %>%
  complete(Trial, ct_neg_fu, fill = list(Total = 0)) %>% ##########
  filter(ct_neg_fu == "FU") %>%
  group_by(ct_neg_fu) %>%
  summarize(
    percentile_10 = round(quantile(Total, probs = 0.1, na.rm = TRUE), 0),
    lower_quartile = round(quantile(Total, probs = 0.25, na.rm = TRUE), 0),
    median = round(median(Total, na.rm = TRUE), 0),
    upper_quartile = round(quantile(Total, probs = 0.75, na.rm = TRUE), 0),
    percentile_90 = round(quantile(Total, probs = 0.9, na.rm = TRUE), 0)
  )

y1_ct_neg_fu_tab_formatted <- y1_ct_neg_fu_tab %>%
  mutate_if(is.numeric, ~comma(., big.mark = ","))

### Creating table output

y1_ct_neg_fu_tab_vis <- y1_ct_neg_fu_tab_formatted %>%
  select(-1) %>%
  ungroup() %>%
  rename("10th Percentile" = 1,
         "Lower Quartile" = 2,
         "Median" = 3,
         "Upper Quartile" = 4,
         "90th Percentile" = 5) %>%
  kable(format = "html", align = "lrrrrr") %>%
  kable_styling() %>%
  row_spec(0, background = "#407EC9", color = "white")


# ct scan opt-outs --------------------------------------------------------

y1_ct_opt_out_tab <- y1_ct_list[[2]] %>%
  ungroup() %>%
  complete(Trial, ct_rebook, fill = list(Total = 0)) %>%
  filter(ct_rebook == "Opt-out") %>%
  group_by(ct_rebook) %>%
  summarize(
    percentile_10 = round(quantile(Total, probs = 0.1, na.rm = TRUE), 0),
    lower_quartile = round(quantile(Total, probs = 0.25, na.rm = TRUE), 0),
    median = round(median(Total, na.rm = TRUE), 0),
    upper_quartile = round(quantile(Total, probs = 0.75, na.rm = TRUE), 0),
    percentile_90 = round(quantile(Total, probs = 0.9, na.rm = TRUE), 0)
  )

y1_ct_opt_out_tab_formatted <- y1_ct_opt_out_tab %>%
  mutate_if(is.numeric, ~comma(., big.mark = ","))

### Creating table output

y1_ct_opt_out_tab_vis <- y1_ct_opt_out_tab_formatted %>%
  select(-1) %>%
  ungroup() %>%
  rename("10th Percentile" = 1,
         "Lower Quartile" = 2,
         "Median" = 3,
         "Upper Quartile" = 4,
         "90th Percentile" = 5) %>%
  kable(format = "html", align = "lrrrrr") %>%
  kable_styling() %>%
  row_spec(0, background = "#407EC9", color = "white")



# ct exclusions -----------------------------------------------------------

y1_ct_ex_tab <- y1_ct_ex %>%
  summarize(
    percentile_10 = round(quantile(Total, probs = 0.1, na.rm = TRUE), 0),
    lower_quartile = round(quantile(Total, probs = 0.25, na.rm = TRUE), 0),
    median = round(median(Total, na.rm = TRUE), 0),
    upper_quartile = round(quantile(Total, probs = 0.75, na.rm = TRUE), 0),
    percentile_90 = round(quantile(Total, probs = 0.9, na.rm = TRUE), 0)
  ) %>%
  rename("10th Percentile" = 1,
         "Lower Quartile" = 2,
         "Median" = 3,
         "Upper Quartile" = 4,
         "90th Percentile" = 5) %>%
  kable(format = "html", align = "lrrrrr") %>%
  kable_styling() %>%
  row_spec(0, background = "#407EC9", color = "white")


# init scan outcomes table ------------------------------------------------

y1_ct_init_scan_tab <- y1_init_treat_groups_list[[1]] %>%
  ungroup() %>%
  complete(Trial, init_treat_outcome, fill = list(Total = 0)) %>%
  mutate(init_treat_outcome = ifelse(init_treat_outcome == "3M_FU", "3M follow-up", init_treat_outcome)) %>%
  group_by(init_treat_outcome) %>%
  summarize(
    percentile_10 = round(quantile(Total, probs = 0.1, na.rm = TRUE), 0),
    lower_quartile = round(quantile(Total, probs = 0.25, na.rm = TRUE), 0),
    median = round(median(Total, na.rm = TRUE), 0),
    upper_quartile = round(quantile(Total, probs = 0.75, na.rm = TRUE), 0),
    percentile_90 = round(quantile(Total, probs = 0.9, na.rm = TRUE), 0)
  )

y1_ct_init_scan_tab_formatted <- y1_ct_init_scan_tab %>%
  mutate_if(is.numeric, ~comma(., big.mark = ","))

### Creating table output

y1_ct_init_scan_tab_vis <- y1_ct_init_scan_tab_formatted %>%
  ungroup() %>%
  rename("CT Scan Outcome" = 1,
         "10th Percentile" = 2,
         "Lower Quartile" = 3,
         "Median" = 4,
         "Upper Quartile" = 5,
         "90th Percentile" = 6) %>%
  kable(format = "html", align = "lrrrrr") %>%
  kable_styling() %>%
  row_spec(0, background = "#407EC9", color = "white")


# init diag mod table -----------------------------------------------------

y1_init_diags_mod_tab_df <- pivot_longer(y1_init_diags_modalities_df, 
                                         cols = c(pet, bronch, ebus, ct_bio, nav_bronch, lft),
                                         names_to = "Modality",
                                         values_to = "Total")

y1_init_diags_mod_tab <- y1_init_diags_mod_tab_df %>%
  ungroup() %>%
  complete(Trial, Modality, fill = list(Total = 0)) %>%
  mutate(Modality = case_when(
    Modality == "pet" ~ "PET CT",
    Modality == "bronch" ~ "Bronchoscopy",
    Modality == "ebus" ~ "EBUS",
    Modality == "ct_bio" ~ "CT guided biopsy",
    Modality == "nav_bronch" ~ "Navigation bronchoscopy",
    Modality == "lft" ~ "Lung function test",
    TRUE ~ Modality)) %>%
  group_by(Modality) %>%
  summarize(
    percentile_10 = round(quantile(Total, probs = 0.1, na.rm = TRUE), 0),
    lower_quartile = round(quantile(Total, probs = 0.25, na.rm = TRUE), 0),
    median = round(median(Total, na.rm = TRUE), 0),
    upper_quartile = round(quantile(Total, probs = 0.75, na.rm = TRUE), 0),
    percentile_90 = round(quantile(Total, probs = 0.9, na.rm = TRUE), 0)
  )

y1_init_diags_mod_tab_formatted <- y1_init_diags_mod_tab %>%
  mutate_if(is.numeric, ~comma(., big.mark = ","))

### Creating table output

y1_init_diags_mod_tab_vis <- y1_init_diags_mod_tab_formatted %>%
  ungroup() %>%
  rename("Diagnostic Modality" = 1,
         "10th Percentile" = 2,
         "Lower Quartile" = 3,
         "Median" = 4,
         "Upper Quartile" = 5,
         "90th Percentile" = 6) %>%
  kable(format = "html", align = "lrrrrr") %>%
  kable_styling() %>%
  row_spec(0, background = "#407EC9", color = "white")


# init diag malignancy table ----------------------------------------------

y1_init_outcomes_tab <- y1_init_treat_groups_list[[4]] %>%
  ungroup() %>%
  complete(Trial, cancer_outcome, fill = list(Total = 0)) %>%
  group_by(cancer_outcome) %>%
  summarize(
    percentile_10 = round(quantile(Total, probs = 0.1, na.rm = TRUE), 0),
    lower_quartile = round(quantile(Total, probs = 0.25, na.rm = TRUE), 0),
    median = round(median(Total, na.rm = TRUE), 0),
    upper_quartile = round(quantile(Total, probs = 0.75, na.rm = TRUE), 0),
    percentile_90 = round(quantile(Total, probs = 0.9, na.rm = TRUE), 0)
  )

y1_init_outcomes_tab_formatted <- y1_init_outcomes_tab %>%
  mutate_if(is.numeric, ~comma(., big.mark = ","))

### Creating table output

y1_init_outcomes_tab_formatted <- y1_init_outcomes_tab_formatted %>%
  ungroup() %>%
  rename("Cancer Diagnosis Outcome" = 1,
         "10th Percentile" = 2,
         "Lower Quartile" = 3,
         "Median" = 4,
         "Upper Quartile" = 5,
         "90th Percentile" = 6) %>%
  kable(format = "html", align = "lrrrrr") %>%
  kable_styling() %>%
  row_spec(0, background = "#407EC9", color = "white")


# init treatment modality table -------------------------------------------

y1_init_treat_mod_tab <- y1_init_modalities_df %>%
  ungroup() %>%
  complete(Trial, modality, fill = list(Total = 0)) %>%
  mutate(modality = case_when(
    modality == "Best_Supportive_Care" ~ "Best Supportive Care",
    modality == "Chemoradiotherapy" ~ "Chemoradiotherapy",
    modality == "Chemotherapy" ~ "Chemotherapy",
    modality == "Neoadjuvant_Immunotherapy" ~ "Neoadjuvant Immunotherapy",
    modality == "SABR" ~ "SABR",
    modality == "Surgery" ~ "Surgery",
    modality == "Surgery_Adjuvant_Chemotherapy" ~ "Surgery Adjuvant Chemotherapy",
    modality == "XRT" ~ "XRT",
    TRUE ~ modality)) %>%
  group_by(modality) %>%
  summarize(
    percentile_10 = round(quantile(Total, probs = 0.1, na.rm = TRUE), 0),
    lower_quartile = round(quantile(Total, probs = 0.25, na.rm = TRUE), 0),
    median = round(median(Total, na.rm = TRUE), 0),
    upper_quartile = round(quantile(Total, probs = 0.75, na.rm = TRUE), 0),
    percentile_90 = round(quantile(Total, probs = 0.9, na.rm = TRUE), 0)
  )

y1_init_treat_mod_tab_formatted <- y1_init_treat_mod_tab %>%
  mutate_if(is.numeric, ~comma(., big.mark = ","))

### Creating table output

y1_init_treat_mod_tab_vis <- y1_init_treat_mod_tab_formatted %>%
  ungroup() %>%
  rename("Treatment Modality" = 1,
         "10th Percentile" = 2,
         "Lower Quartile" = 3,
         "Median" = 4,
         "Upper Quartile" = 5,
         "90th Percentile" = 6) %>%
  kable(format = "html", align = "lrrrrr") %>%
  kable_styling() %>%
  row_spec(0, background = "#407EC9", color = "white")


# init treatment incidentals table ----------------------------------------

y1_init_treat_inc_tab_vis <- y1_init_incidental_summary %>%
  ungroup() %>%
  rename("Condition" = 1,
         "10th Percentile" = 2,
         "Lower Quartile" = 3,
         "Median" = 4,
         "Upper Quartile" = 5,
         "90th Percentile" = 6) %>%
  kable(format = "html", align = "lrrrrr") %>%
  kable_styling() %>%
  row_spec(0, background = "#407EC9", color = "white")

# m3 CT scan table --------------------------------------------------------

y1_m3_ct_activity_tab <- y1_m3_treat_groups_list[[1]] %>%
  ungroup() %>%
  complete(Trial, m3_rebook, fill = list(Total = 0)) %>%
  group_by(m3_rebook) %>%
  summarize(
    percentile_10 = round(quantile(Total, probs = 0.1, na.rm = TRUE), 0),
    lower_quartile = round(quantile(Total, probs = 0.25, na.rm = TRUE), 0),
    median = round(median(Total, na.rm = TRUE), 0),
    upper_quartile = round(quantile(Total, probs = 0.75, na.rm = TRUE), 0),
    percentile_90 = round(quantile(Total, probs = 0.9, na.rm = TRUE), 0)
  )

y1_m3_ct_activity_tab_formatted <- y1_m3_ct_activity_tab %>%
  mutate_if(is.numeric, ~comma(., big.mark = ","))

### Creating table output

y1_m3_ct_activity_tab_vis <- y1_m3_ct_activity_tab_formatted %>%
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

# m3 scan outcomes table ------------------------------------------------

y1_ct_m3_scan_tab <- y1_m3_treat_groups_list[[2]] %>%
  ungroup() %>%
  complete(Trial, m3_treat_outcome, fill = list(Total = 0)) %>%
  mutate(m3_treat_outcome = ifelse(m3_treat_outcome == "12M_FU", "12M follow-up", m3_treat_outcome),
         m3_treat_outcome = ifelse(m3_treat_outcome == "24M_FU", "24M follow-up", m3_treat_outcome)) %>%
  group_by(m3_treat_outcome) %>%
  summarize(
    percentile_10 = round(quantile(Total, probs = 0.1, na.rm = TRUE), 0),
    lower_quartile = round(quantile(Total, probs = 0.25, na.rm = TRUE), 0),
    median = round(median(Total, na.rm = TRUE), 0),
    upper_quartile = round(quantile(Total, probs = 0.75, na.rm = TRUE), 0),
    percentile_90 = round(quantile(Total, probs = 0.9, na.rm = TRUE), 0)
  )

y1_ct_m3_scan_tab_formatted <- y1_ct_m3_scan_tab %>%
  mutate_if(is.numeric, ~comma(., big.mark = ","))

### Creating table output

y1_ct_m3_scan_tab_vis <- y1_ct_m3_scan_tab_formatted %>%
  ungroup() %>%
  rename("CT Scan Outcome" = 1,
         "10th Percentile" = 2,
         "Lower Quartile" = 3,
         "Median" = 4,
         "Upper Quartile" = 5,
         "90th Percentile" = 6) %>%
  kable(format = "html", align = "lrrrrr") %>%
  kable_styling() %>%
  row_spec(0, background = "#407EC9", color = "white")


# m3 diag mod table -----------------------------------------------------

y1_m3_diags_mod_tab_df <- pivot_longer(y1_m3_diags_modalities_df, 
                                         cols = c(pet, bronch, ebus, ct_bio, nav_bronch, lft),
                                         names_to = "Modality",
                                         values_to = "Total")

y1_m3_diags_mod_tab <- y1_m3_diags_mod_tab_df %>%
  ungroup() %>%
  complete(Trial, Modality, fill = list(Total = 0)) %>%
  mutate(Modality = case_when(
    Modality == "pet" ~ "PET CT",
    Modality == "bronch" ~ "Bronchoscopy",
    Modality == "ebus" ~ "EBUS",
    Modality == "ct_bio" ~ "CT guided biopsy",
    Modality == "nav_bronch" ~ "Navigation bronchoscopy",
    Modality == "lft" ~ "Lung function test",
    TRUE ~ Modality)) %>%
  group_by(Modality) %>%
  summarize(
    percentile_10 = round(quantile(Total, probs = 0.1, na.rm = TRUE), 0),
    lower_quartile = round(quantile(Total, probs = 0.25, na.rm = TRUE), 0),
    median = round(median(Total, na.rm = TRUE), 0),
    upper_quartile = round(quantile(Total, probs = 0.75, na.rm = TRUE), 0),
    percentile_90 = round(quantile(Total, probs = 0.9, na.rm = TRUE), 0)
  )

y1_m3_diags_mod_tab_formatted <- y1_m3_diags_mod_tab %>%
  mutate_if(is.numeric, ~comma(., big.mark = ","))

### Creating table output

y1_m3_diags_mod_tab_vis <- y1_m3_diags_mod_tab_formatted %>%
  ungroup() %>%
  rename("Diagnostic Modality" = 1,
         "10th Percentile" = 2,
         "Lower Quartile" = 3,
         "Median" = 4,
         "Upper Quartile" = 5,
         "90th Percentile" = 6) %>%
  kable(format = "html", align = "lrrrrr") %>%
  kable_styling() %>%
  row_spec(0, background = "#407EC9", color = "white")


# m3 diag malignancy table ----------------------------------------------

y1_m3_outcomes_tab <- y1_m3_treat_groups_list[[5]] %>%
  ungroup() %>%
  complete(Trial, cancer_outcome, fill = list(Total = 0)) %>%
  group_by(cancer_outcome) %>%
  summarize(
    percentile_10 = round(quantile(Total, probs = 0.1, na.rm = TRUE), 0),
    lower_quartile = round(quantile(Total, probs = 0.25, na.rm = TRUE), 0),
    median = round(median(Total, na.rm = TRUE), 0),
    upper_quartile = round(quantile(Total, probs = 0.75, na.rm = TRUE), 0),
    percentile_90 = round(quantile(Total, probs = 0.9, na.rm = TRUE), 0)
  )

y1_m3_outcomes_tab_formatted <- y1_m3_outcomes_tab %>%
  mutate_if(is.numeric, ~comma(., big.mark = ","))

### Creating table output

y1_m3_outcomes_tab_vis <- y1_m3_outcomes_tab_formatted %>%
  ungroup() %>%
  rename("Cancer Diagnosis Outcome" = 1,
         "10th Percentile" = 2,
         "Lower Quartile" = 3,
         "Median" = 4,
         "Upper Quartile" = 5,
         "90th Percentile" = 6) %>%
  kable(format = "html", align = "lrrrrr") %>%
  kable_styling() %>%
  row_spec(0, background = "#407EC9", color = "white")


# m3 treatment modality table -------------------------------------------

y1_m3_treat_mod_tab <- y1_m3_modalities_df %>%
  ungroup() %>%
  complete(Trial, modality, fill = list(Total = 0)) %>%
  mutate(modality = case_when(
    modality == "Best_Supportive_Care" ~ "Best Supportive Care",
    modality == "Chemoradiotherapy" ~ "Chemoradiotherapy",
    modality == "Chemotherapy" ~ "Chemotherapy",
    modality == "Neoadjuvant_Immunotherapy" ~ "Neoadjuvant Immunotherapy",
    modality == "SABR" ~ "SABR",
    modality == "Surgery" ~ "Surgery",
    modality == "Surgery_Adjuvant_Chemotherapy" ~ "Surgery Adjuvant Chemotherapy",
    modality == "XRT" ~ "XRT",
    TRUE ~ modality)) %>%
  group_by(modality) %>%
  summarize(
    percentile_10 = round(quantile(Total, probs = 0.1, na.rm = TRUE), 0),
    lower_quartile = round(quantile(Total, probs = 0.25, na.rm = TRUE), 0),
    median = round(median(Total, na.rm = TRUE), 0),
    upper_quartile = round(quantile(Total, probs = 0.75, na.rm = TRUE), 0),
    percentile_90 = round(quantile(Total, probs = 0.9, na.rm = TRUE), 0)
  )

y1_m3_treat_mod_tab_formatted <- y1_m3_treat_mod_tab %>%
  mutate_if(is.numeric, ~comma(., big.mark = ","))

### Creating table output

y1_m3_treat_mod_tab_vis <- y1_m3_treat_mod_tab_formatted %>%
  ungroup() %>%
  rename("Treatment Modality" = 1,
         "10th Percentile" = 2,
         "Lower Quartile" = 3,
         "Median" = 4,
         "Upper Quartile" = 5,
         "90th Percentile" = 6) %>%
  kable(format = "html", align = "lrrrrr") %>%
  kable_styling() %>%
  row_spec(0, background = "#407EC9", color = "white")


# m3 incidentals summary --------------------------------------------------

y1_m3_treat_inc_tab_vis <- y1_m3_incidental_summary %>%
  ungroup() %>%
  rename("Condition" = 1,
         "10th Percentile" = 2,
         "Lower Quartile" = 3,
         "Median" = 4,
         "Upper Quartile" = 5,
         "90th Percentile" = 6) %>%
  kable(format = "html", align = "lrrrrr") %>%
  kable_styling() %>%
  row_spec(0, background = "#407EC9", color = "white")

# m12 CT scan table --------------------------------------------------------

y1_m12_ct_activity_tab <- y1_m12_treat_groups_list[[1]] %>%
  ungroup() %>%
  complete(Trial, m12_rebook, fill = list(Total = 0)) %>%
  group_by(m12_rebook) %>%
  summarize(
    percentile_10 = round(quantile(Total, probs = 0.1, na.rm = TRUE), 0),
    lower_quartile = round(quantile(Total, probs = 0.25, na.rm = TRUE), 0),
    median = round(median(Total, na.rm = TRUE), 0),
    upper_quartile = round(quantile(Total, probs = 0.75, na.rm = TRUE), 0),
    percentile_90 = round(quantile(Total, probs = 0.9, na.rm = TRUE), 0)
  )

y1_m12_ct_activity_tab_formatted <- y1_m12_ct_activity_tab %>%
  mutate_if(is.numeric, ~comma(., big.mark = ","))

### Creating table output

y1_m12_ct_activity_tab_vis <- y1_m12_ct_activity_tab_formatted %>%
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

# m12 scan outcomes table ------------------------------------------------

y1_ct_m12_scan_tab <- y1_m12_treat_groups_list[[2]] %>%
  ungroup() %>%
  complete(Trial, m12_treat_outcome, fill = list(Total = 0)) %>%
  mutate(m12_treat_outcome = ifelse(m12_treat_outcome == "12M_FU", "12M follow-up", m12_treat_outcome)) %>%
  group_by(m12_treat_outcome) %>%
  summarize(
    percentile_10 = round(quantile(Total, probs = 0.1, na.rm = TRUE), 0),
    lower_quartile = round(quantile(Total, probs = 0.25, na.rm = TRUE), 0),
    median = round(median(Total, na.rm = TRUE), 0),
    upper_quartile = round(quantile(Total, probs = 0.75, na.rm = TRUE), 0),
    percentile_90 = round(quantile(Total, probs = 0.9, na.rm = TRUE), 0)
  )

y1_ct_m12_scan_tab_formatted <- y1_ct_m12_scan_tab %>%
  mutate_if(is.numeric, ~comma(., big.mark = ","))

### Creating table output

y1_ct_m12_scan_tab_vis <- y1_ct_m12_scan_tab_formatted %>%
  ungroup() %>%
  rename("CT Scan Outcome" = 1,
         "10th Percentile" = 2,
         "Lower Quartile" = 3,
         "Median" = 4,
         "Upper Quartile" = 5,
         "90th Percentile" = 6) %>%
  kable(format = "html", align = "lrrrrr") %>%
  kable_styling() %>%
  row_spec(0, background = "#407EC9", color = "white")


# m12 diag mod table -----------------------------------------------------

y1_m12_diags_mod_tab_df <- pivot_longer(y1_m12_diags_modalities_df, 
                                       cols = c(pet, bronch, ebus, ct_bio, nav_bronch, lft),
                                       names_to = "Modality",
                                       values_to = "Total")

y1_m12_diags_mod_tab <- y1_m12_diags_mod_tab_df %>%
  ungroup() %>%
  complete(Trial, Modality, fill = list(Total = 0)) %>%
  mutate(Modality = case_when(
    Modality == "pet" ~ "PET CT",
    Modality == "bronch" ~ "Bronchoscopy",
    Modality == "ebus" ~ "EBUS",
    Modality == "ct_bio" ~ "CT guided biopsy",
    Modality == "nav_bronch" ~ "Navigation bronchoscopy",
    Modality == "lft" ~ "Lung function test",
    TRUE ~ Modality)) %>%
  group_by(Modality) %>%
  summarize(
    percentile_10 = round(quantile(Total, probs = 0.1, na.rm = TRUE), 0),
    lower_quartile = round(quantile(Total, probs = 0.25, na.rm = TRUE), 0),
    median = round(median(Total, na.rm = TRUE), 0),
    upper_quartile = round(quantile(Total, probs = 0.75, na.rm = TRUE), 0),
    percentile_90 = round(quantile(Total, probs = 0.9, na.rm = TRUE), 0)
  )

y1_m12_diags_mod_tab_formatted <- y1_m12_diags_mod_tab %>%
  mutate_if(is.numeric, ~comma(., big.mark = ","))

### Creating table output

y1_m12_diags_mod_tab_vis <- y1_m12_diags_mod_tab_formatted %>%
  ungroup() %>%
  rename("Diagnostic Modality" = 1,
         "10th Percentile" = 2,
         "Lower Quartile" = 3,
         "Median" = 4,
         "Upper Quartile" = 5,
         "90th Percentile" = 6) %>%
  kable(format = "html", align = "lrrrrr") %>%
  kable_styling() %>%
  row_spec(0, background = "#407EC9", color = "white")


# m12 diag malignancy table ----------------------------------------------

y1_m12_outcomes_tab <- y1_m12_treat_groups_list[[5]] %>%
  ungroup() %>%
  complete(Trial, cancer_outcome, fill = list(Total = 0)) %>%
  group_by(cancer_outcome) %>%
  summarize(
    percentile_10 = round(quantile(Total, probs = 0.1, na.rm = TRUE), 0),
    lower_quartile = round(quantile(Total, probs = 0.25, na.rm = TRUE), 0),
    median = round(median(Total, na.rm = TRUE), 0),
    upper_quartile = round(quantile(Total, probs = 0.75, na.rm = TRUE), 0),
    percentile_90 = round(quantile(Total, probs = 0.9, na.rm = TRUE), 0)
  )

y1_m12_outcomes_tab_formatted <- y1_m12_outcomes_tab %>%
  mutate_if(is.numeric, ~comma(., big.mark = ","))

### Creating table output

y1_m12_outcomes_tab_vis <- y1_m12_outcomes_tab_formatted %>%
  ungroup() %>%
  rename("Cancer Diagnosis Outcome" = 1,
         "10th Percentile" = 2,
         "Lower Quartile" = 3,
         "Median" = 4,
         "Upper Quartile" = 5,
         "90th Percentile" = 6) %>%
  kable(format = "html", align = "lrrrrr") %>%
  kable_styling() %>%
  row_spec(0, background = "#407EC9", color = "white")


# m12 treatment modality table -------------------------------------------

y1_m12_treat_mod_tab <- y1_m12_modalities_df %>%
  ungroup() %>%
  complete(Trial, modality, fill = list(Total = 0)) %>%
  mutate(modality = case_when(
    modality == "Best_Supportive_Care" ~ "Best Supportive Care",
    modality == "Chemoradiotherapy" ~ "Chemoradiotherapy",
    modality == "Chemotherapy" ~ "Chemotherapy",
    modality == "Neoadjuvant_Immunotherapy" ~ "Neoadjuvant Immunotherapy",
    modality == "SABR" ~ "SABR",
    modality == "Surgery" ~ "Surgery",
    modality == "Surgery_Adjuvant_Chemotherapy" ~ "Surgery Adjuvant Chemotherapy",
    modality == "XRT" ~ "XRT",
    TRUE ~ modality)) %>%
  group_by(modality) %>%
  summarize(
    percentile_10 = round(quantile(Total, probs = 0.1, na.rm = TRUE), 0),
    lower_quartile = round(quantile(Total, probs = 0.25, na.rm = TRUE), 0),
    median = round(median(Total, na.rm = TRUE), 0),
    upper_quartile = round(quantile(Total, probs = 0.75, na.rm = TRUE), 0),
    percentile_90 = round(quantile(Total, probs = 0.9, na.rm = TRUE), 0)
  )

y1_m12_treat_mod_tab_formatted <- y1_m12_treat_mod_tab %>%
  mutate_if(is.numeric, ~comma(., big.mark = ","))

### Creating table output

y1_m12_treat_mod_tab_vis <- y1_m12_treat_mod_tab_formatted %>%
  ungroup() %>%
  rename("Treatment Modality" = 1,
         "10th Percentile" = 2,
         "Lower Quartile" = 3,
         "Median" = 4,
         "Upper Quartile" = 5,
         "90th Percentile" = 6) %>%
  kable(format = "html", align = "lrrrrr") %>%
  kable_styling() %>%
  row_spec(0, background = "#407EC9", color = "white")


# m12 incidentals summary -------------------------------------------------

y1_m12_treat_inc_tab_vis <- y1_m12_incidental_summary %>%
  ungroup() %>%
  rename("Condition" = 1,
         "10th Percentile" = 2,
         "Lower Quartile" = 3,
         "Median" = 4,
         "Upper Quartile" = 5,
         "90th Percentile" = 6) %>%
  kable(format = "html", align = "lrrrrr") %>%
  kable_styling() %>%
  row_spec(0, background = "#407EC9", color = "white")

# m24 CT scan table --------------------------------------------------------

y1_m24_ct_activity_tab <- y1_m24_treat_groups_list[[1]] %>%
  ungroup() %>%
  complete(Trial, m24_rebook, fill = list(Total = 0)) %>%
  group_by(m24_rebook) %>%
  summarize(
    percentile_10 = round(quantile(Total, probs = 0.1, na.rm = TRUE), 0),
    lower_quartile = round(quantile(Total, probs = 0.25, na.rm = TRUE), 0),
    median = round(median(Total, na.rm = TRUE), 0),
    upper_quartile = round(quantile(Total, probs = 0.75, na.rm = TRUE), 0),
    percentile_90 = round(quantile(Total, probs = 0.9, na.rm = TRUE), 0)
  )

y1_m24_ct_activity_tab_formatted <- y1_m24_ct_activity_tab %>%
  mutate_if(is.numeric, ~comma(., big.mark = ","))

### Creating table output

y1_m24_ct_activity_tab_vis <- y1_m24_ct_activity_tab_formatted %>%
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

# m24 scan outcomes table ------------------------------------------------

y1_ct_m24_scan_tab <- y1_m24_treat_groups_list[[2]] %>%
  ungroup() %>%
  complete(Trial, m24_treat_outcome, fill = list(Total = 0)) %>%
  mutate(m24_treat_outcome = ifelse(m24_treat_outcome == "12M_FU", "12M follow-up", m24_treat_outcome)) %>%
  group_by(m24_treat_outcome) %>%
  summarize(
    percentile_10 = round(quantile(Total, probs = 0.1, na.rm = TRUE), 0),
    lower_quartile = round(quantile(Total, probs = 0.25, na.rm = TRUE), 0),
    median = round(median(Total, na.rm = TRUE), 0),
    upper_quartile = round(quantile(Total, probs = 0.75, na.rm = TRUE), 0),
    percentile_90 = round(quantile(Total, probs = 0.9, na.rm = TRUE), 0)
  )

y1_ct_m24_scan_tab_formatted <- y1_ct_m24_scan_tab %>%
  mutate_if(is.numeric, ~comma(., big.mark = ","))

### Creating table output

y1_ct_m24_scan_tab_vis <- y1_ct_m24_scan_tab_formatted %>%
  ungroup() %>%
  rename("CT Scan Outcome" = 1,
         "10th Percentile" = 2,
         "Lower Quartile" = 3,
         "Median" = 4,
         "Upper Quartile" = 5,
         "90th Percentile" = 6) %>%
  kable(format = "html", align = "lrrrrr") %>%
  kable_styling() %>%
  row_spec(0, background = "#407EC9", color = "white")


# m24 diag mod table -----------------------------------------------------

y1_m24_diags_mod_tab_df <- pivot_longer(y1_m24_diags_modalities_df, 
                                        cols = c(pet, bronch, ebus, ct_bio, nav_bronch, lft),
                                        names_to = "Modality",
                                        values_to = "Total")

y1_m24_diags_mod_tab <- y1_m24_diags_mod_tab_df %>%
  ungroup() %>%
  complete(Trial, Modality, fill = list(Total = 0)) %>%
  mutate(Modality = case_when(
    Modality == "pet" ~ "PET CT",
    Modality == "bronch" ~ "Bronchoscopy",
    Modality == "ebus" ~ "EBUS",
    Modality == "ct_bio" ~ "CT guided biopsy",
    Modality == "nav_bronch" ~ "Navigation bronchoscopy",
    Modality == "lft" ~ "Lung function test",
    TRUE ~ Modality)) %>%
  group_by(Modality) %>%
  summarize(
    percentile_10 = round(quantile(Total, probs = 0.1, na.rm = TRUE), 0),
    lower_quartile = round(quantile(Total, probs = 0.25, na.rm = TRUE), 0),
    median = round(median(Total, na.rm = TRUE), 0),
    upper_quartile = round(quantile(Total, probs = 0.75, na.rm = TRUE), 0),
    percentile_90 = round(quantile(Total, probs = 0.9, na.rm = TRUE), 0)
  )

y1_m24_diags_mod_tab_formatted <- y1_m24_diags_mod_tab %>%
  mutate_if(is.numeric, ~comma(., big.mark = ","))

### Creating table output

y1_m24_diags_mod_tab_vis <- y1_m24_diags_mod_tab_formatted %>%
  ungroup() %>%
  rename("Diagnostic Modality" = 1,
         "10th Percentile" = 2,
         "Lower Quartile" = 3,
         "Median" = 4,
         "Upper Quartile" = 5,
         "90th Percentile" = 6) %>%
  kable(format = "html", align = "lrrrrr") %>%
  kable_styling() %>%
  row_spec(0, background = "#407EC9", color = "white")


# m24 diag malignancy table ----------------------------------------------

y1_m24_outcomes_tab <- y1_m24_treat_groups_list[[5]] %>%
  ungroup() %>%
  complete(Trial, cancer_outcome, fill = list(Total = 0)) %>%
  group_by(cancer_outcome) %>%
  summarize(
    percentile_10 = round(quantile(Total, probs = 0.1, na.rm = TRUE), 0),
    lower_quartile = round(quantile(Total, probs = 0.25, na.rm = TRUE), 0),
    median = round(median(Total, na.rm = TRUE), 0),
    upper_quartile = round(quantile(Total, probs = 0.75, na.rm = TRUE), 0),
    percentile_90 = round(quantile(Total, probs = 0.9, na.rm = TRUE), 0)
  )

y1_m24_outcomes_tab_formatted <- y1_m24_outcomes_tab %>%
  mutate_if(is.numeric, ~comma(., big.mark = ","))

### Creating table output

y1_m24_outcomes_tab_vis <- y1_m24_outcomes_tab_formatted %>%
  ungroup() %>%
  rename("Cancer Diagnosis Outcome" = 1,
         "10th Percentile" = 2,
         "Lower Quartile" = 3,
         "Median" = 4,
         "Upper Quartile" = 5,
         "90th Percentile" = 6) %>%
  kable(format = "html", align = "lrrrrr") %>%
  kable_styling() %>%
  row_spec(0, background = "#407EC9", color = "white")


# m24 treatment modality table -------------------------------------------

y1_m24_treat_mod_tab <- y1_m24_modalities_df %>%
  ungroup() %>%
  complete(Trial, modality, fill = list(Total = 0)) %>%
  mutate(modality = case_when(
    modality == "Best_Supportive_Care" ~ "Best Supportive Care",
    modality == "Chemoradiotherapy" ~ "Chemoradiotherapy",
    modality == "Chemotherapy" ~ "Chemotherapy",
    modality == "Neoadjuvant_Immunotherapy" ~ "Neoadjuvant Immunotherapy",
    modality == "SABR" ~ "SABR",
    modality == "Surgery" ~ "Surgery",
    modality == "Surgery_Adjuvant_Chemotherapy" ~ "Surgery Adjuvant Chemotherapy",
    modality == "XRT" ~ "XRT",
    TRUE ~ modality)) %>%
  group_by(modality) %>%
  summarize(
    percentile_10 = round(quantile(Total, probs = 0.1, na.rm = TRUE), 0),
    lower_quartile = round(quantile(Total, probs = 0.25, na.rm = TRUE), 0),
    median = round(median(Total, na.rm = TRUE), 0),
    upper_quartile = round(quantile(Total, probs = 0.75, na.rm = TRUE), 0),
    percentile_90 = round(quantile(Total, probs = 0.9, na.rm = TRUE), 0)
  )

y1_m24_treat_mod_tab_formatted <- y1_m24_treat_mod_tab %>%
  mutate_if(is.numeric, ~comma(., big.mark = ","))

### Creating table output

y1_m24_treat_mod_tab_vis <- y1_m24_treat_mod_tab_formatted %>%
  ungroup() %>%
  rename("Treatment Modality" = 1,
         "10th Percentile" = 2,
         "Lower Quartile" = 3,
         "Median" = 4,
         "Upper Quartile" = 5,
         "90th Percentile" = 6) %>%
  kable(format = "html", align = "lrrrrr") %>%
  kable_styling() %>%
  row_spec(0, background = "#407EC9", color = "white")


# month 24 incidentals summary --------------------------------------------

y1_m24_treat_inc_tab_vis <- y1_m24_incidental_summary %>%
  ungroup() %>%
  rename("Condition" = 1,
         "10th Percentile" = 2,
         "Lower Quartile" = 3,
         "Median" = 4,
         "Upper Quartile" = 5,
         "90th Percentile" = 6) %>%
  kable(format = "html", align = "lrrrrr") %>%
  kable_styling() %>%
  row_spec(0, background = "#407EC9", color = "white")
