
# Simulate Year 1 24-month FU Treatment Groups --------------------------------

y1_m24_treat_groups_list <- m24_treat_groups(input_df = y1_m24_FU_input_df,
                                             dna_rate = m24_scan_dna_rate_y1,
                                             rebook_rate= m24_scan_rebook_rate_y1,
                                             diagnostic_rate = m24_diagnostic_rate_y1,
                                             incidental_rate = m24_incidental_rate_y1,
                                             follow_up_rate = m24_m24_fu_rate_y1,
                                             cancer_rate = m24_cancer_rate_y1)

y1_m24_add_diags_df <- y1_m24_treat_groups_list[[3]]
y1_m24_cancer_df <- y1_m24_treat_groups_list[[5]]
y1_m24_opt_out <- y1_m24_treat_groups_list[[7]] %>%
  select(1:3)
y1_m48_FU_input_df <- y1_m24_treat_groups_list[[4]]

# Simulate Year 1 24-month Treatment Modalities ----------------------------

y1_m24_modalities_df <- m24_treatment_modalities(input_df = y1_m24_cancer_df,
                                                 surgery_rate = m24_treatment_surgery_y1,
                                                 surg_ac_rate = m24_treatment_surg_ac_y1,
                                                 sabr_rate = m24_treatment_sabr_y1,
                                                 xrt_rate = m24_treatment_xrt_y1,
                                                 chemrad_rate = m24_treatment_chemrad_y1,
                                                 chemo_rate = m24_treatment_chemo_y1,
                                                 nadj_imm_rate = m24_treatment_nadj_imm_y1)
