
# Simulate Year 4 Initial Treatment Groups --------------------------------

y4_init_treat_groups_list <- initial_treat_groups(input_df = y4_ct_output,
                                             diagnostic_rate = initial_diagnostic_rate_y4,
                                             incidental_rate = initial_incidental_rate_y4,
                                             follow_up_rate = initial_m3_fu_rate_y4,
                                             cancer_rate = initial_cancer_rate_y4)

y4_init_add_diags_df <- y4_init_treat_groups_list[[2]]
y4_init_cancer_df <- y4_init_treat_groups_list[[5]]


# Simulate Year 4 Initial Treatment Modalities ----------------------------

y4_init_modalities_df <- initial_treatment_modalities(input_df = y4_init_cancer_df,
                                                      surgery_rate = initial_treatment_surgery_y4,
                                                      surg_ac_rate = initial_treatment_surg_ac_y4,
                                                      sabr_rate = initial_treatment_sabr_y4,
                                                      xrt_rate = initial_treatment_xrt_y4,
                                                      chemrad_rate = initial_treatment_chemrad_y4,
                                                      chemo_rate = initial_treatment_chemo_y4,
                                                      nadj_imm_rate = initial_treatment_nadj_imm_y4)

y4_m3_FU_input_df <- y4_init_treat_groups_list[[3]]
