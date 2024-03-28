
# Uptake Population -------------------------------------------------------

y5_uptake_hist <- uptake_pop_chart_visual(y5_uptake_pop, "#407EC9", "Year 5")

# LHC Activity ------------------------------------------------------------

y5_lhc_activity_hist_df <- y5_lhc_list[[3]] %>%
  filter(lhc_initial_dna_rebook != "Opt-out")

y5_lhc_activity_hist <- lhc_activity_chart_visual(y5_lhc_activity_hist_df, "#407EC9", "Year 5")

# LHC Outcomes ------------------------------------------------------------

y5_lhc_outcomes_hist_df <- y5_lhc_list[[4]]

y5_lhc_outcomes_hist <- lhc_outcomes_chart_visual(y5_lhc_outcomes_hist_df, "#407EC9", "Year 5")


# LHC Opt-outs ------------------------------------------------------------

y5_lhc_opt_out_hist_df <- y5_lhc_list[[3]] %>%
  filter(lhc_initial_dna_rebook == "Opt-out")

y5_lhc_opt_out_hist <- lhc_opt_out_chart_visual(y5_lhc_opt_out_hist_df, "#407EC9", "Year 5")

# LHC Opt-outs ------------------------------------------------------------

y5_lhc_neg_ri_hist_df <- y5_lhc_list[[7]] %>%
  group_by(Trial) %>%
  summarise(Total = n())

y5_lhc_neg_ri_hist <- lhc_neg_ri_chart_visual(y5_lhc_neg_ri_hist_df, "#407EC9", "Year 5")

# CT Scan Activity --------------------------------------------------------

y5_ct_activity_hist_df <- y5_ct_list[[2]] %>%
  filter(ct_rebook != "Opt-out")

y5_ct_activity_hist <- ct_activity_chart_visual(y5_ct_activity_hist_df, "#407EC9", "Year 5")


# CT Scan Outcomes --------------------------------------------------------

y5_ct_outcomes_hist_df <- y5_ct_list[[3]]

y5_ct_outcomes_hist <- ct_outcomes_chart_visual(y5_ct_outcomes_hist_df, "#407EC9", "Year 5")


# CT Scan Negative Follow-ups ---------------------------------------------

y5_ct_neg_ri_hist_df <- y5_ct_list[[5]] %>%
  group_by(Trial) %>%
  summarise(Total = n())

y5_ct_neg_ri_hist <- ct_neg_ri_chart_visual(y5_ct_neg_ri_hist_df, "#407EC9", "Year 5")


# CT Scan Opt-Outs --------------------------------------------------------

y5_ct_opt_out_hist_df <- y5_ct_list[[7]] %>%
  group_by(Trial) %>%
  summarise(Total = n())

y5_ct_opt_out_hist <- ct_opt_out_chart_visual(y5_ct_opt_out_hist_df, "#407EC9", "Year 5")

# Initial Treatment Positive CT Outcomes ----------------------------------

y5_init_treat_pos_outcomes_hist_df <- y5_init_treat_groups_list[[1]] %>%
  mutate(init_treat_outcome_clean = case_when(init_treat_outcome == "3M_FU" ~ "3 Month Follow-Up",
                                              init_treat_outcome == "Diagnostics" ~ "Additional Diagnostics",
                                              init_treat_outcome == "Incidental" ~ "Incidental Finding"))

y5_init_treat_pos_outcomes_hist <- init_treat_pos_outcomes_chart_visual(y5_init_treat_pos_outcomes_hist_df, "#407EC9", "Year 5")


# Initial Treatment Diagnostics -------------------------------------------

y5_init_modalities_hist_df <- y5_init_diags_modalities_df %>%
  gather(modality, Total, -c(1)) %>%
  mutate(modality_clean = case_when(modality == "bronch" ~ "Bronchoscopy",
                                    modality == "ct_bio" ~ "CT Guided Biopsy",
                                    modality == "ebus" ~ "EBUS",
                                    modality == "lft" ~ "LFTs",
                                    modality == "nav_bronch" ~ "Navigation Bronchoscopy",
                                    modality == "pet" ~ "PET Scan",
                                    TRUE ~ modality))

y5_init_treat_diags_hist <- init_treat_diags_chart_visual(y5_init_modalities_hist_df, "#407EC9", "Year 5")


# Initial Treatment Confirmed Malignancy ----------------------------------

y5_init_treat_malig_hist_df <- y5_init_treat_groups_list[[4]]

y5_init_treat_malig_hist <- init_treat_malig_chart_visual(y5_init_treat_malig_hist_df, "#407EC9", "Year 5")


# Initial Treatment Modalities --------------------------------------------

y5_init_mods_hist_df <- y5_init_modalities_df %>%
  mutate(modality_clean = case_when(modality == "Best_Supportive_Care" ~ "Best Supportive Care",
                                    modality == "Neoadjuvant_Immunotherapy" ~ "Neoadjuvant Immunotherapy",
                                    modality == "Surgery_Adjuvant_Chemotherapy" ~ "Surgery with Adjuvant Chemotherapy",
                                    modality == "XRT" ~ "Radiotherapy",
                                    TRUE ~ modality)
  )

y5_init_treat_mods_hist <- init_treat_mods_chart_visual(y5_init_mods_hist_df, "#407EC9", "Year 5")

# Month 3 Treatment CT Activity -------------------------------------------

y5_m3_treat_ct_act_hist_df <- y5_m3_treat_groups_list[[1]] %>%
  filter(m3_rebook != "Opt-out") %>%
  group_by(Trial) %>%
  summarise(Total = sum(Total))

y5_m3_treat_ct_act_hist <- m3_treat_ct_act_chart_visual(y5_m3_treat_ct_act_hist_df, "#407EC9", "Year 5")

# Month 3 Treatment Positive CT Outcomes ----------------------------------

y5_m3_treat_pos_outcomes_hist_df <- y5_m3_treat_groups_list[[2]] %>%
  mutate(m3_treat_outcome_clean = case_when(m3_treat_outcome == "12M_FU" ~ "12 Month Follow-Up",
                                            m3_treat_outcome == "Diagnostics" ~ "Additional Diagnostics",
                                            m3_treat_outcome == "Incidental" ~ "Incidental Finding"))

y5_m3_treat_pos_outcomes_hist <- m3_treat_pos_outcomes_chart_visual(y5_m3_treat_pos_outcomes_hist_df, "#407EC9", "Year 5")


# Month 3 Treatment Diagnostics -------------------------------------------

y5_m3_modalities_hist_df <- y5_m3_diags_modalities_df %>%
  gather(modality, Total, -c(1)) %>%
  mutate(modality_clean = case_when(modality == "bronch" ~ "Bronchoscopy",
                                    modality == "ct_bio" ~ "CT Guided Biopsy",
                                    modality == "ebus" ~ "EBUS",
                                    modality == "lft" ~ "LFTs",
                                    modality == "nav_bronch" ~ "Navigation Bronchoscopy",
                                    modality == "pet" ~ "PET Scan",
                                    TRUE ~ modality))

y5_m3_treat_diags_hist <- m3_treat_diags_chart_visual(y5_m3_modalities_hist_df, "#407EC9", "Year 5")


# Month 3 Treatment Confirmed Malignancy ----------------------------------

y5_m3_treat_malig_hist_df <- y5_m3_treat_groups_list[[5]]

y5_m3_treat_malig_hist <- m3_treat_malig_chart_visual(y5_m3_treat_malig_hist_df, "#407EC9", "Year 5")


# Month 3 Treatment Modalities --------------------------------------------

y5_m3_mods_hist_df <- y5_m3_modalities_df %>%
  mutate(modality_clean = case_when(modality == "Best_Supportive_Care" ~ "Best Supportive Care",
                                    modality == "Neoadjuvant_Immunotherapy" ~ "Neoadjuvant Immunotherapy",
                                    modality == "Surgery_Adjuvant_Chemotherapy" ~ "Surgery with Adjuvant Chemotherapy",
                                    modality == "XRT" ~ "Radiotherapy",
                                    TRUE ~ modality)
  )

y5_m3_treat_mods_hist <- m3_treat_mods_chart_visual(y5_m3_mods_hist_df, "#407EC9", "Year 5")

# Month 12 Treatment CT Activity -------------------------------------------

y5_m12_treat_ct_act_hist_df <- y5_m12_treat_groups_list[[1]] %>%
  filter(m12_rebook != "Opt-out") %>%
  group_by(Trial) %>%
  summarise(Total = sum(Total))

y5_m12_treat_ct_act_hist <- m12_treat_ct_act_chart_visual(y5_m12_treat_ct_act_hist_df, "#407EC9", "Year 5")

# Month 12 Treatment Positive CT Outcomes ----------------------------------

y5_m12_treat_pos_outcomes_hist_df <- y5_m12_treat_groups_list[[2]] %>%
  mutate(m12_treat_outcome_clean = case_when(m12_treat_outcome == "24M_FU" ~ "24 Month Follow-Up",
                                             m12_treat_outcome == "Diagnostics" ~ "Additional Diagnostics",
                                             m12_treat_outcome == "Incidental" ~ "Incidental Finding"))

y5_m12_treat_pos_outcomes_hist <- m12_treat_pos_outcomes_chart_visual(y5_m12_treat_pos_outcomes_hist_df, "#407EC9", "Year 5")


# Month 12 Treatment Diagnostics -------------------------------------------

y5_m12_modalities_hist_df <- y5_m12_diags_modalities_df %>%
  gather(modality, Total, -c(1)) %>%
  mutate(modality_clean = case_when(modality == "bronch" ~ "Bronchoscopy",
                                    modality == "ct_bio" ~ "CT Guided Biopsy",
                                    modality == "ebus" ~ "EBUS",
                                    modality == "lft" ~ "LFTs",
                                    modality == "nav_bronch" ~ "Navigation Bronchoscopy",
                                    modality == "pet" ~ "PET Scan",
                                    TRUE ~ modality))

y5_m12_treat_diags_hist <- m12_treat_diags_chart_visual(y5_m12_modalities_hist_df, "#407EC9", "Year 5")


# Month 12 Treatment Confirmed Malignancy ----------------------------------

y5_m12_treat_malig_hist_df <- y5_m12_treat_groups_list[[5]]

y5_m12_treat_malig_hist <- m12_treat_malig_chart_visual(y5_m12_treat_malig_hist_df, "#407EC9", "Year 5")


# Month 12 Treatment Modalities --------------------------------------------

y5_m12_mods_hist_df <- y5_m12_modalities_df %>%
  mutate(modality_clean = case_when(modality == "Best_Supportive_Care" ~ "Best Supportive Care",
                                    modality == "Neoadjuvant_Immunotherapy" ~ "Neoadjuvant Immunotherapy",
                                    modality == "Surgery_Adjuvant_Chemotherapy" ~ "Surgery with Adjuvant Chemotherapy",
                                    modality == "XRT" ~ "Radiotherapy",
                                    TRUE ~ modality)
  )

y5_m12_treat_mods_hist <- m12_treat_mods_chart_visual(y5_m12_mods_hist_df, "#407EC9", "Year 5")

# Month 24 Treatment CT Activity -------------------------------------------

y5_m24_treat_ct_act_hist_df <- y5_m24_treat_groups_list[[1]] %>%
  filter(m24_rebook != "Opt-out") %>%
  group_by(Trial) %>%
  summarise(Total = sum(Total))

y5_m24_treat_ct_act_hist <- m24_treat_ct_act_chart_visual(y5_m24_treat_ct_act_hist_df, "#407EC9", "Year 5")

# Month 24 Treatment Positive CT Outcomes ----------------------------------

y5_m24_treat_pos_outcomes_hist_df <- y5_m24_treat_groups_list[[2]] %>%
  mutate(m24_treat_outcome_clean = case_when(m24_treat_outcome == "48M_FU" ~ "48 Month Follow-Up",
                                             m24_treat_outcome == "Diagnostics" ~ "Additional Diagnostics",
                                             m24_treat_outcome == "Incidental" ~ "Incidental Finding"))

y5_m24_treat_pos_outcomes_hist <- m24_treat_pos_outcomes_chart_visual(y5_m24_treat_pos_outcomes_hist_df, "#407EC9", "Year 5")


# Month 24 Treatment Diagnostics -------------------------------------------

y5_m24_modalities_hist_df <- y5_m24_diags_modalities_df %>%
  gather(modality, Total, -c(1)) %>%
  mutate(modality_clean = case_when(modality == "bronch" ~ "Bronchoscopy",
                                    modality == "ct_bio" ~ "CT Guided Biopsy",
                                    modality == "ebus" ~ "EBUS",
                                    modality == "lft" ~ "LFTs",
                                    modality == "nav_bronch" ~ "Navigation Bronchoscopy",
                                    modality == "pet" ~ "PET Scan",
                                    TRUE ~ modality))

y5_m24_treat_diags_hist <- m24_treat_diags_chart_visual(y5_m24_modalities_hist_df, "#407EC9", "Year 5")


# Month 24 Treatment Confirmed Malignancy ----------------------------------

y5_m24_treat_malig_hist_df <- y5_m24_treat_groups_list[[5]]

y5_m24_treat_malig_hist <- m24_treat_malig_chart_visual(y5_m24_treat_malig_hist_df, "#407EC9", "Year 5")


# Month 24 Treatment Modalities --------------------------------------------

y5_m24_mods_hist_df <- y5_m24_modalities_df %>%
  mutate(modality_clean = case_when(modality == "Best_Supportive_Care" ~ "Best Supportive Care",
                                    modality == "Neoadjuvant_Immunotherapy" ~ "Neoadjuvant Immunotherapy",
                                    modality == "Surgery_Adjuvant_Chemotherapy" ~ "Surgery with Adjuvant Chemotherapy",
                                    modality == "XRT" ~ "Radiotherapy",
                                    TRUE ~ modality)
  )

y5_m24_treat_mods_hist <- m24_treat_mods_chart_visual(y5_m24_mods_hist_df, "#407EC9", "Year 5")
