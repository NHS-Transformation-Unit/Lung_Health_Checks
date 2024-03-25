
# Simulate Year 3 12-month FU Treatment Groups --------------------------------

y3_m12_treat_groups_list <- m12_treat_groups(input_df = y3_m12_FU_input_df,
                                             dna_rate = m12_scan_dna_rate,
                                             rebook_rate= m12_scan_rebook_rate,
                                             diagnostic_rate = m12_diagnostic_rate,
                                             incidental_rate = m12_incidental_rate,
                                             follow_up_rate = m12_m12_fu_rate,
                                             cancer_rate = m12_cancer_rate)

y3_m12_add_diags_df <- y3_m12_treat_groups_list[[3]]
y3_m12_cancer_df <- y3_m12_treat_groups_list[[5]]


# Simulate Year 3 12-month Treatment Modalities ----------------------------

y3_m12_modalities_df <- m12_treatment_modalities(input_df = y3_m12_cancer_df,
                                                 surgery_rate = initial_treatment_surgery_y3,
                                                 surg_ac_rate = initial_treatment_surg_ac_y3,
                                                 sabr_rate = initial_treatment_sabr_y3,
                                                 xrt_rate = initial_treatment_xrt_y3,
                                                 chemrad_rate = initial_treatment_chemrad_y3,
                                                 chemo_rate = initial_treatment_chemo_y3,
                                                 nadj_imm_rate = initial_treatment_nadj_imm_y3)

y3_m24_FU_input_df <- y3_m12_treat_groups_list[[4]]

# Creating outputs to inform m24 reinvites

y3_m12_opt_out <- y3_m12_treat_groups_list[[7]] %>%
  select(1:3)
