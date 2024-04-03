
# Simulate Year 1 Initial Treatment Groups --------------------------------

y1_init_treat_groups_list <- initial_treat_groups(input_df = y1_ct_output,
                                             diagnostic_rate = initial_diagnostic_rate_y1,
                                             incidental_rate = initial_incidental_rate_y1,
                                             follow_up_rate = initial_m3_fu_rate_y1,
                                             cancer_rate = initial_cancer_rate_y1)

y1_init_add_diags_df <- y1_init_treat_groups_list[[2]]
y1_init_cancer_df <- y1_init_treat_groups_list[[5]]
y1_init_inc_df <- y1_init_treat_groups_list[[6]]


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


# Simulate Year 1 Initial Incidental Findings -----------------------------

y1_init_incidental_df <- initial_incidental_findings(input_df = y1_init_inc_df,
                                                     cc_rate = initial_inc_cc_y1, 
                                                     emp_rate = initial_inc_emp_y1, 
                                                     ila_rate = initial_inc_ila_y1, 
                                                     meda_rate = initial_inc_meda_y1, 
                                                     avc_rate = initial_inc_avc_y1, 
                                                     bro_rate = initial_inc_bro_y1, 
                                                     rbr_rate = initial_inc_rbr_y1, 
                                                     taa_rate = initial_inc_taa_y1, 
                                                     ost_rate = initial_inc_ost_y1, 
                                                     lsl_rate = initial_inc_lsl_y1, 
                                                     ren_rate = initial_inc_ren_y1, 
                                                     adr_rate = initial_inc_adr_y1, 
                                                     oca_rate = initial_inc_oca_y1, 
                                                     ple_rate = initial_inc_ple_y1, 
                                                     sbl_rate = initial_inc_sbl_y1, 
                                                     con_rate = initial_inc_con_y1, 
                                                     bon_rate = initial_inc_bon_y1, 
                                                     fra_rate = initial_inc_fra_y1, 
                                                     thy_rate = initial_inc_thy_y1, 
                                                     aaa_rate = initial_inc_aaa_y1)
