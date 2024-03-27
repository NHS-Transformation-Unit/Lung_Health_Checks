
# Simulate Year 2 3-month FU Treatment Groups --------------------------------

y2_m3_treat_groups_list <- m3_treat_groups(input_df = y2_m3_FU_input_df,
                                           dna_rate = m3_scan_dna_rate_y2,
                                           rebook_rate= m3_scan_rebook_rate_y2,
                                           diagnostic_rate = m3_diagnostic_rate_y2,
                                           incidental_rate = m3_incidental_rate_y2,
                                           follow_up_rate = m3_m12_fu_rate_y2,
                                           cancer_rate = m3_cancer_rate_y2)

y2_m3_add_diags_df <- y2_m3_treat_groups_list[[3]]
y2_m3_cancer_df <- y2_m3_treat_groups_list[[6]]


# Simulate Year 2 3-month Treatment Modalities ----------------------------

y2_m3_modalities_df <- m3_treatment_modalities(input_df = y2_m3_cancer_df,
                                               surgery_rate = m3_treatment_surgery_y2,
                                               surg_ac_rate = m3_treatment_surg_ac_y2,
                                               sabr_rate = m3_treatment_sabr_y2,
                                               xrt_rate = m3_treatment_xrt_y2,
                                               chemrad_rate = m3_treatment_chemrad_y2,
                                               chemo_rate = m3_treatment_chemo_y2,
                                               nadj_imm_rate = m3_treatment_nadj_imm_y2)

y2_m12_FU_input_df <- y2_m3_treat_groups_list[[4]]

# Creating outputs to inform m24 reinvites

y2_m3_opt_out <- y2_m3_treat_groups_list[[7]] %>%
  select(1:3)
