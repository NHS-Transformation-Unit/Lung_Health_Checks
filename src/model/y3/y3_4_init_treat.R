
# Simulate Year 3 Initial Treatment Groups --------------------------------

y3_init_treat_groups_list <- initial_treat_groups(input_df = y3_ct_output,
                                             diagnostic_rate = initial_diagnostic_rate_y3,
                                             incidental_rate = initial_incidental_rate_y3,
                                             follow_up_rate = initial_m3_fu_rate_y3,
                                             cancer_rate = initial_cancer_rate_y3)

y3_init_add_diags_df <- y3_init_treat_groups_list[[2]]
y3_init_cancer_df <- y3_init_treat_groups_list[[5]]


# Simulate Year 3 Initial Treatment Modalities ----------------------------

y3_init_modalities_df <- initial_treatment_modalities(input_df = y3_init_cancer_df,
                                                      surgery_rate = initial_treatment_surgery_y3,
                                                      surg_ac_rate = initial_treatment_surg_ac_y3,
                                                      sabr_rate = initial_treatment_sabr_y3,
                                                      xrt_rate = initial_treatment_xrt_y3,
                                                      chemrad_rate = initial_treatment_chemrad_y3,
                                                      chemo_rate = initial_treatment_chemo_y3,
                                                      nadj_imm_rate = initial_treatment_nadj_imm_y3)

y3_m3_FU_input_df <- y3_init_treat_groups_list[[3]]
