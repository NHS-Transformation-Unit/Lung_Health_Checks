
# Simulate Year 5 3-month FU Treatment Groups --------------------------------

y5_m3_treat_groups_list <- m3_treat_groups(input_df = y5_m3_FU_input_df,
                                           dna_rate = m3_scan_dna_rate_y5,
                                           rebook_rate= m3_scan_rebook_rate_y5,
                                           diagnostic_rate = m3_diagnostic_rate_y5,
                                           incidental_rate = m3_incidental_rate_y5,
                                           follow_up_rate = m3_m12_fu_rate_y5,
                                           cancer_rate = m3_cancer_rate_y5)

y5_m3_add_diags_df <- y5_m3_treat_groups_list[[3]]
y5_m3_cancer_df <- y5_m3_treat_groups_list[[5]]


# Simulate Year 5 3-month Treatment Modalities ----------------------------

y5_m3_modalities_df <- m3_treatment_modalities(input_df = y5_m3_cancer_df,
                                               surgery_rate = m3_treatment_surgery_y5,
                                               surg_ac_rate = m3_treatment_surg_ac_y5,
                                               sabr_rate = m3_treatment_sabr_y5,
                                               xrt_rate = m3_treatment_xrt_y5,
                                               chemrad_rate = m3_treatment_chemrad_y5,
                                               chemo_rate = m3_treatment_chemo_y5,
                                               nadj_imm_rate = m3_treatment_nadj_imm_y5)

y5_m12_FU_input_df <- y5_m3_treat_groups_list[[4]]

# Creating outputs to inform m24 reinvites

y5_m3_opt_out <- y5_m3_treat_groups_list[[7]] %>%
  select(1:3)
