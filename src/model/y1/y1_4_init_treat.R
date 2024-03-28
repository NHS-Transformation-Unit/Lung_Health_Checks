
# Simulate Year 1 Initial Treatment Groups --------------------------------

y1_init_treat_groups_list <- initial_treat_groups(input_df = y1_ct_output,
                                             diagnostic_rate = initial_diagnostic_rate_y1,
                                             incidental_rate = initial_incidental_rate_y1,
                                             follow_up_rate = initial_m3_fu_rate_y1,
                                             cancer_rate = initial_cancer_rate_y1)

y1_init_add_diags_df <- y1_init_treat_groups_list[[2]]
y1_init_cancer_df <- y1_init_treat_groups_list[[5]]


# Simulate Year 1 Initial Treatment Modalities ----------------------------

y1_init_modalities_df <- initial_treatment_modalities(input_df = y1_init_cancer_df,
                                                      surgery_rate = initial_treatment_surgery_y1,
                                                      surg_ac_rate = initial_treatment_surg_ac_y1,
                                                      sabr_rate = initial_treatment_sabr_y1,
                                                      xrt_rate = initial_treatment_xrt_y1,
                                                      chemrad_rate = initial_treatment_chemrad_y1,
                                                      chemo_rate = initial_treatment_chemo_y1,
                                                      nadj_imm_rate = initial_treatment_nadj_imm_y1)

y1_m3_FU_input_df <- y1_init_treat_groups_list[[3]]
