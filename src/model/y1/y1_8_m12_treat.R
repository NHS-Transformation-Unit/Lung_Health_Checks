
# Simulate Year 1 12-month FU Treatment Groups --------------------------------

y1_m12_treat_groups_list <- m12_treat_groups(input_df = y1_m12_FU_input_df,
                                             dna_rate = m12_scan_dna_rate_y1,
                                             rebook_rate= m12_scan_rebook_rate_y1,
                                             diagnostic_rate = m12_diagnostic_rate_y1,
                                             incidental_rate = m12_incidental_rate_y1,
                                             follow_up_rate = m12_m24_fu_rate_y1,
                                             cancer_rate = m12_cancer_rate_y1)

y1_m12_add_diags_df <- y1_m12_treat_groups_list[[3]]
y1_m12_cancer_df <- y1_m12_treat_groups_list[[5]]


# Simulate Year 1 12-month Treatment Modalities ----------------------------

y1_m12_modalities_df <- m12_treatment_modalities(input_df = y1_m12_cancer_df,
                                                 surgery_rate = m12_treatment_surgery_y1,
                                                 surg_ac_rate = m12_treatment_surg_ac_y1,
                                                 sabr_rate = m12_treatment_sabr_y1,
                                                 xrt_rate = m12_treatment_xrt_y1,
                                                 chemrad_rate = m12_treatment_chemrad_y1,
                                                 chemo_rate = m12_treatment_chemo_y1,
                                                 nadj_imm_rate = m12_treatment_nadj_imm_y1)

y1_m24_FU_input_df <- y1_m12_treat_groups_list[[4]]

# Creating outputs to inform m24 reinvites

y1_m12_opt_out <- y1_m12_treat_groups_list[[7]] %>%
  select(1:3)
