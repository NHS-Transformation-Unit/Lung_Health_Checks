
# Simulate Year 5 Initial Treatment Groups --------------------------------

y5_init_treat_groups_list <- initial_treat_groups(input_df = y5_ct_output,
                                             diagnostic_rate = initial_diagnostic_rate_y5,
                                             incidental_rate = initial_incidental_rate_y5,
                                             follow_up_rate = initial_m3_fu_rate_y5,
                                             cancer_rate = initial_cancer_rate_y5)

y5_init_add_diags_df <- y5_init_treat_groups_list[[2]]
y5_init_cancer_df <- y5_init_treat_groups_list[[5]]
y5_init_inc_df <- y5_init_treat_groups_list[[6]]


# Simulate Year 5 Initial Treatment Modalities ----------------------------

y5_init_modalities_df <- initial_treatment_modalities(input_df = y5_init_cancer_df,
                                                      surgery_rate = initial_treatment_surgery_y5,
                                                      surg_ac_rate = initial_treatment_surg_ac_y5,
                                                      sabr_rate = initial_treatment_sabr_y5,
                                                      xrt_rate = initial_treatment_xrt_y5,
                                                      chemrad_rate = initial_treatment_chemrad_y5,
                                                      chemo_rate = initial_treatment_chemo_y5,
                                                      nadj_imm_rate = initial_treatment_nadj_imm_y5)

y5_m3_FU_input_df <- y5_init_treat_groups_list[[3]]


# Simulate Year 5 Initial Incidental Findings -----------------------------

y5_init_incidental_df <- initial_incidental_findings(input_df = y5_init_inc_df,
                                                     cc_rate = initial_inc_cc_y5, 
                                                     emp_rate = initial_inc_emp_y5, 
                                                     ila_rate = initial_inc_ila_y5, 
                                                     meda_rate = initial_inc_meda_y5, 
                                                     avc_rate = initial_inc_avc_y5, 
                                                     bro_rate = initial_inc_bro_y5, 
                                                     rbr_rate = initial_inc_rbr_y5, 
                                                     taa_rate = initial_inc_taa_y5, 
                                                     ost_rate = initial_inc_ost_y5, 
                                                     lsl_rate = initial_inc_lsl_y5, 
                                                     ren_rate = initial_inc_ren_y5, 
                                                     adr_rate = initial_inc_adr_y5, 
                                                     oca_rate = initial_inc_oca_y5, 
                                                     ple_rate = initial_inc_ple_y5, 
                                                     sbl_rate = initial_inc_sbl_y5, 
                                                     con_rate = initial_inc_con_y5, 
                                                     fra_rate = initial_inc_fra_y5, 
                                                     thy_rate = initial_inc_thy_y5, 
                                                     aaa_rate = initial_inc_aaa_y5, 
                                                     tub_rate = initial_inc_tub_y5)


# Summarise Year 5 Initial Incidental Findings ----------------------------

y5_init_incidental_summary <- incidental_summaries(y5_init_incidental_df)
