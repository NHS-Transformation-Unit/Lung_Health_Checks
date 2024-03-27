
# Simulate Year 4 24-month FU Treatment Groups --------------------------------

y4_m24_treat_groups_list <- m24_treat_groups(input_df = y4_m24_FU_input_df,
                                             dna_rate = m24_scan_dna_rate_y4,
                                             rebook_rate= m24_scan_rebook_rate_y4,
                                             diagnostic_rate = m24_diagnostic_rate_y4,
                                             incidental_rate = m24_incidental_rate_y4,
                                             follow_up_rate = m24_m24_fu_rate_y4,
                                             cancer_rate = m24_cancer_rate_y4)

y4_m24_add_diags_df <- y4_m24_treat_groups_list[[3]]
y4_m24_cancer_df <- y4_m24_treat_groups_list[[6]]
y4_m24_opt_out <- y4_m24_treat_groups_list[[7]] %>%
  select(1:3)
y4_m48_FU_input_df <- y4_m24_treat_groups_list[[4]]

# Simulate Year 4 24-month Treatment Modalities ----------------------------

y4_m24_modalities_df <- m24_treatment_modalities(input_df = y4_m24_cancer_df,
                                                 surgery_rate = m24_treatment_surgery_y4,
                                                 surg_ac_rate = m24_treatment_surg_ac_y4,
                                                 sabr_rate = m24_treatment_sabr_y4,
                                                 xrt_rate = m24_treatment_xrt_y4,
                                                 chemrad_rate = m24_treatment_chemrad_y4,
                                                 chemo_rate = m24_treatment_chemo_y4,
                                                 nadj_imm_rate = m24_treatment_nadj_imm_y4)
