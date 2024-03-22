
# Simulate Year 2 Initial Treatment Groups --------------------------------

y2_init_treat_groups_list <- initial_treat_groups(input_df = y2_ct_output,
                                             diagnostic_rate = initial_diagnostic_rate_y2,
                                             incidental_rate = initial_incidental_rate_y2,
                                             follow_up_rate = initial_m3_fu_rate_y2,
                                             cancer_rate = initial_cancer_rate_y2)

y2_init_add_diags_df <- y2_init_treat_groups_list[[2]]
y2_init_cancer_df <- y2_init_treat_groups_list[[5]]


# Simulate Year 2 Initial Treatment Modalities ----------------------------

y2_init_modalities_df <- initial_treatment_modalities(input_df = y2_init_cancer_df,
                                                      surgery_rate = initial_treatment_surgery_y2,
                                                      surg_ac_rate = initial_treatment_surg_ac_y2,
                                                      sabr_rate = initial_treatment_sabr_y2,
                                                      xrt_rate = initial_treatment_xrt_y2,
                                                      chemrad_rate = initial_treatment_chemrad_y2,
                                                      chemo_rate = initial_treatment_chemo_y2,
                                                      nadj_imm_rate = initial_treatment_nadj_imm_y2)

m3_FU_input_df <- y2_init_treat_groups_list[[3]]