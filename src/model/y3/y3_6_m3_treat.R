
# Simulate Year 3 3-month FU Treatment Groups --------------------------------

y3_m3_treat_groups_list <- m3_treat_groups(input_df = y3_m3_FU_input_df,
                                           dna_rate = m3_scan_dna_rate_y3,
                                           rebook_rate= m3_scan_rebook_rate_y3,
                                           diagnostic_rate = m3_diagnostic_rate_y3,
                                           incidental_rate = m3_incidental_rate_y3,
                                           follow_up_rate = m3_m12_fu_rate_y3,
                                           cancer_rate = m3_cancer_rate_y3,
                                           m24_fu_rate = m3_m24_fu_rate_y3)

y3_m3_add_diags_df <- y3_m3_treat_groups_list[[3]]
y3_m3_cancer_df <- y3_m3_treat_groups_list[[6]]
y3_m3_inc_df <- y3_m3_treat_groups_list[[8]]
y3_m3_m24_FU_input_df <- y3_m3_treat_groups_list[[9]]


# Simulate Year 3 3-month Treatment Modalities ----------------------------

y3_m3_modalities_df <- m3_treatment_modalities(input_df = y3_m3_cancer_df,
                                               surgery_rate = m3_treatment_surgery_y3,
                                               surg_ac_rate = m3_treatment_surg_ac_y3,
                                               sabr_rate = m3_treatment_sabr_y3,
                                               xrt_rate = m3_treatment_xrt_y3,
                                               chemrad_rate = m3_treatment_chemrad_y3,
                                               chemo_rate = m3_treatment_chemo_y3,
                                               nadj_imm_rate = m3_treatment_nadj_imm_y3)

y3_m12_FU_input_df <- y3_m3_treat_groups_list[[4]]

# Creating outputs to inform m24 reinvites

y3_m3_opt_out <- y3_m3_treat_groups_list[[7]] %>%
  select(1:3)


# Simulate Year 3 3-Month Incidental Findings -----------------------------

y3_m3_incidental_df <- m3_incidental_findings(input_df = y3_m3_inc_df,
                                              cc_rate = m3_inc_cc_y3, 
                                              emp_rate = m3_inc_emp_y3, 
                                              ila_rate = m3_inc_ila_y3, 
                                              meda_rate = m3_inc_meda_y3, 
                                              avc_rate = m3_inc_avc_y3, 
                                              bro_rate = m3_inc_bro_y3, 
                                              rbr_rate = m3_inc_rbr_y3, 
                                              taa_rate = m3_inc_taa_y3, 
                                              ost_rate = m3_inc_ost_y3, 
                                              lsl_rate = m3_inc_lsl_y3, 
                                              ren_rate = m3_inc_ren_y3, 
                                              adr_rate = m3_inc_adr_y3, 
                                              oca_rate = m3_inc_oca_y3, 
                                              ple_rate = m3_inc_ple_y3, 
                                              sbl_rate = m3_inc_sbl_y3, 
                                              con_rate = m3_inc_con_y3, 
                                              fra_rate = m3_inc_fra_y3, 
                                              thy_rate = m3_inc_thy_y3, 
                                              aaa_rate = m3_inc_aaa_y3, 
                                              tub_rate = m3_inc_tub_y3)


# Simulate Year 3 3-Month Incidental Findings -----------------------------

y3_m3_incidental_summary <- incidental_summaries(y3_m3_incidental_df)
