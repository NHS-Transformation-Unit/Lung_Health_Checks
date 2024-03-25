
# Simulate Year 1 3-month FU Treatment Groups --------------------------------

y1_m3_treat_groups_list <- m3_treat_groups(input_df = y1_m3_FU_input_df,
                                           dna_rate = m3_scan_dna_rate,
                                           rebook_rate= m3_scan_rebook_rate,
                                           diagnostic_rate = m3_diagnostic_rate,
                                           incidental_rate = m3_incidental_rate,
                                           follow_up_rate = m3_m12_fu_rate,
                                           cancer_rate = m3_cancer_rate)

y1_m3_add_diags_df <- y1_m3_treat_groups_list[[3]]
y1_m3_cancer_df <- y1_m3_treat_groups_list[[5]]


# Simulate Year 1 3-month Treatment Modalities ----------------------------

y1_m3_modalities_df <- m3_treatment_modalities(input_df = y1_m3_cancer_df,
                                               surgery_rate = initial_treatment_surgery_y1,
                                               surg_ac_rate = initial_treatment_surg_ac_y1,
                                               sabr_rate = initial_treatment_sabr_y1,
                                               xrt_rate = initial_treatment_xrt_y1,
                                               chemrad_rate = initial_treatment_chemrad_y1,
                                               chemo_rate = initial_treatment_chemo_y1,
                                               nadj_imm_rate = initial_treatment_nadj_imm_y1)

y1_m12_FU_input_df <- y1_m3_treat_groups_list[[4]]

# Creating outputs to inform m24 reinvites

y1_m3_opt_out <- y1_m3_treat_groups_list[[7]] %>%
  select(1:3)
