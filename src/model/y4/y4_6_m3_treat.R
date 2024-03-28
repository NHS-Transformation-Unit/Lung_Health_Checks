
# Simulate Year 4 3-month FU Treatment Groups --------------------------------

y4_m3_treat_groups_list <- m3_treat_groups(input_df = y4_m3_FU_input_df,
                                           dna_rate = m3_scan_dna_rate_y4,
                                           rebook_rate= m3_scan_rebook_rate_y4,
                                           diagnostic_rate = m3_diagnostic_rate_y4,
                                           incidental_rate = m3_incidental_rate_y4,
                                           follow_up_rate = m3_m12_fu_rate_y4,
                                           cancer_rate = m3_cancer_rate_y4)

y4_m3_add_diags_df <- y4_m3_treat_groups_list[[3]]
y4_m3_cancer_df <- y4_m3_treat_groups_list[[6]]


# Simulate Year 4 3-month Treatment Modalities ----------------------------

y4_m3_modalities_df <- m3_treatment_modalities(input_df = y4_m3_cancer_df,
                                               surgery_rate = m3_treatment_surgery_y4,
                                               surg_ac_rate = m3_treatment_surg_ac_y4,
                                               sabr_rate = m3_treatment_sabr_y4,
                                               xrt_rate = m3_treatment_xrt_y4,
                                               chemrad_rate = m3_treatment_chemrad_y4,
                                               chemo_rate = m3_treatment_chemo_y4,
                                               nadj_imm_rate = m3_treatment_nadj_imm_y4)

y4_m12_FU_input_df <- y4_m3_treat_groups_list[[4]]

# Creating outputs to inform m24 reinvites

y4_m3_opt_out <- y4_m3_treat_groups_list[[7]] %>%
  select(1:3)
