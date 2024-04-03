
# Simulate Year 2 Initial Treatment Groups --------------------------------

y2_init_treat_groups_list <- initial_treat_groups(input_df = y2_ct_output,
                                             diagnostic_rate = initial_diagnostic_rate_y2,
                                             incidental_rate = initial_incidental_rate_y2,
                                             follow_up_rate = initial_m3_fu_rate_y2,
                                             cancer_rate = initial_cancer_rate_y2)

y2_init_add_diags_df <- y2_init_treat_groups_list[[2]]
y2_init_cancer_df <- y2_init_treat_groups_list[[5]]
y2_init_inc_df <- y2_init_treat_groups_list[[6]]


# Simulate Year 2 Initial Treatment Modalities ----------------------------

y2_init_modalities_df <- initial_treatment_modalities(input_df = y2_init_cancer_df,
                                                      surgery_rate = initial_treatment_surgery_y2,
                                                      surg_ac_rate = initial_treatment_surg_ac_y2,
                                                      sabr_rate = initial_treatment_sabr_y2,
                                                      xrt_rate = initial_treatment_xrt_y2,
                                                      chemrad_rate = initial_treatment_chemrad_y2,
                                                      chemo_rate = initial_treatment_chemo_y2,
                                                      nadj_imm_rate = initial_treatment_nadj_imm_y2)

y2_m3_FU_input_df <- y2_init_treat_groups_list[[3]]


# Simulate Year 2 Initial Incidental Findings -----------------------------

y2_init_incidental_df <- initial_incidental_findings(input_df = y2_init_inc_df,
                                                     cc_rate = initial_inc_cc_y2, 
                                                     emp_rate = initial_inc_emp_y2, 
                                                     ila_rate = initial_inc_ila_y2, 
                                                     meda_rate = initial_inc_meda_y2, 
                                                     avc_rate = initial_inc_avc_y2, 
                                                     bro_rate = initial_inc_bro_y2, 
                                                     rbr_rate = initial_inc_rbr_y2, 
                                                     taa_rate = initial_inc_taa_y2, 
                                                     ost_rate = initial_inc_ost_y2, 
                                                     lsl_rate = initial_inc_lsl_y2, 
                                                     ren_rate = initial_inc_ren_y2, 
                                                     adr_rate = initial_inc_adr_y2, 
                                                     oca_rate = initial_inc_oca_y2, 
                                                     ple_rate = initial_inc_ple_y2, 
                                                     sbl_rate = initial_inc_sbl_y2, 
                                                     con_rate = initial_inc_con_y2, 
                                                     bon_rate = initial_inc_bon_y2, 
                                                     fra_rate = initial_inc_fra_y2, 
                                                     thy_rate = initial_inc_thy_y2, 
                                                     aaa_rate = initial_inc_aaa_y2)
