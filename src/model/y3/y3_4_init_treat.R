
# Simulate Year 3 Initial Treatment Groups --------------------------------

y3_init_treat_groups_list <- initial_treat_groups(input_df = y3_ct_output,
                                             diagnostic_rate = initial_diagnostic_rate_y3,
                                             incidental_rate = initial_incidental_rate_y3,
                                             follow_up_rate = initial_m3_fu_rate_y3,
                                             cancer_rate = initial_cancer_rate_y3)

y3_init_add_diags_df <- y3_init_treat_groups_list[[2]]
y3_init_cancer_df <- y3_init_treat_groups_list[[5]]
y3_init_inc_df <- y3_init_treat_groups_list[[6]]


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


# Simulate Year 3 Initial Incidental Findings -----------------------------

y3_init_incidental_df <- initial_incidental_findings(input_df = y3_init_inc_df,
                                                     cc_rate = initial_inc_cc_y3, 
                                                     emp_rate = initial_inc_emp_y3, 
                                                     ila_rate = initial_inc_ila_y3, 
                                                     meda_rate = initial_inc_meda_y3, 
                                                     avc_rate = initial_inc_avc_y3, 
                                                     bro_rate = initial_inc_bro_y3, 
                                                     rbr_rate = initial_inc_rbr_y3, 
                                                     taa_rate = initial_inc_taa_y3, 
                                                     ost_rate = initial_inc_ost_y3, 
                                                     lsl_rate = initial_inc_lsl_y3, 
                                                     ren_rate = initial_inc_ren_y3, 
                                                     adr_rate = initial_inc_adr_y3, 
                                                     oca_rate = initial_inc_oca_y3, 
                                                     ple_rate = initial_inc_ple_y3, 
                                                     sbl_rate = initial_inc_sbl_y3, 
                                                     con_rate = initial_inc_con_y3, 
                                                     fra_rate = initial_inc_fra_y3, 
                                                     thy_rate = initial_inc_thy_y3, 
                                                     aaa_rate = initial_inc_aaa_y3, 
                                                     tub_rate = initial_inc_tub_y3)


# Summarise Year 3 Initial Incidental Findings ----------------------------

y3_init_incidental_summary <- incidental_summaries(y3_init_incidental_df)
