
# Simulate Year 4 Initial Treatment Groups --------------------------------

y4_init_treat_groups_list <- initial_treat_groups(input_df = y4_ct_output,
                                             diagnostic_rate = initial_diagnostic_rate_y4,
                                             incidental_rate = initial_incidental_rate_y4,
                                             follow_up_rate = initial_m3_fu_rate_y4,
                                             cancer_rate = initial_cancer_rate_y4)

y4_init_add_diags_df <- y4_init_treat_groups_list[[2]]
y4_init_cancer_df <- y4_init_treat_groups_list[[5]]
y4_init_inc_df <- y4_init_treat_groups_list[[6]]


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


# Simulate Year 4 Initial Incidental Findings -----------------------------

y4_init_incidental_df <- initial_incidental_findings(input_df = y4_init_inc_df,
                                                     cc_rate = initial_inc_cc_y4, 
                                                     emp_rate = initial_inc_emp_y4, 
                                                     ila_rate = initial_inc_ila_y4, 
                                                     meda_rate = initial_inc_meda_y4, 
                                                     avc_rate = initial_inc_avc_y4, 
                                                     bro_rate = initial_inc_bro_y4, 
                                                     rbr_rate = initial_inc_rbr_y4, 
                                                     taa_rate = initial_inc_taa_y4, 
                                                     ost_rate = initial_inc_ost_y4, 
                                                     lsl_rate = initial_inc_lsl_y4, 
                                                     ren_rate = initial_inc_ren_y4, 
                                                     adr_rate = initial_inc_adr_y4, 
                                                     oca_rate = initial_inc_oca_y4, 
                                                     ple_rate = initial_inc_ple_y4, 
                                                     sbl_rate = initial_inc_sbl_y4, 
                                                     con_rate = initial_inc_con_y4, 
                                                     fra_rate = initial_inc_fra_y4, 
                                                     thy_rate = initial_inc_thy_y4, 
                                                     aaa_rate = initial_inc_aaa_y4, 
                                                     tub_rate = initial_inc_tub_y4)


# Summarise Year 4 Initial Incidental Findings ----------------------------

y4_init_incidental_summary <- incidental_summaries(y4_init_incidental_df)
