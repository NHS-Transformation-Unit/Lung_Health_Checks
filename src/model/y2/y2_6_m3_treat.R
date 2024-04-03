
# Simulate Year 2 3-month FU Treatment Groups --------------------------------

y2_m3_treat_groups_list <- m3_treat_groups(input_df = y2_m3_FU_input_df,
                                           dna_rate = m3_scan_dna_rate_y2,
                                           rebook_rate= m3_scan_rebook_rate_y2,
                                           diagnostic_rate = m3_diagnostic_rate_y2,
                                           incidental_rate = m3_incidental_rate_y2,
                                           follow_up_rate = m3_m12_fu_rate_y2,
                                           cancer_rate = m3_cancer_rate_y2)

y2_m3_add_diags_df <- y2_m3_treat_groups_list[[3]]
y2_m3_cancer_df <- y2_m3_treat_groups_list[[6]]
y2_m3_inc_df <- y2_m3_treat_groups_list[[8]]


# Simulate Year 2 3-month Treatment Modalities ----------------------------

y2_m3_modalities_df <- m3_treatment_modalities(input_df = y2_m3_cancer_df,
                                               surgery_rate = m3_treatment_surgery_y2,
                                               surg_ac_rate = m3_treatment_surg_ac_y2,
                                               sabr_rate = m3_treatment_sabr_y2,
                                               xrt_rate = m3_treatment_xrt_y2,
                                               chemrad_rate = m3_treatment_chemrad_y2,
                                               chemo_rate = m3_treatment_chemo_y2,
                                               nadj_imm_rate = m3_treatment_nadj_imm_y2)

y2_m12_FU_input_df <- y2_m3_treat_groups_list[[4]]

# Creating outputs to inform m24 reinvites

y2_m3_opt_out <- y2_m3_treat_groups_list[[7]] %>%
  select(1:3)


# Simulate Year 2 3-Month Incidental Findings -----------------------------

y2_m3_incidental_df <- m3_incidental_findings(input_df = y2_m3_inc_df,
                                              cc_rate = m3_inc_cc_y2, 
                                              emp_rate = m3_inc_emp_y2, 
                                              ila_rate = m3_inc_ila_y2, 
                                              meda_rate = m3_inc_meda_y2, 
                                              avc_rate = m3_inc_avc_y2, 
                                              bro_rate = m3_inc_bro_y2, 
                                              rbr_rate = m3_inc_rbr_y2, 
                                              taa_rate = m3_inc_taa_y2, 
                                              ost_rate = m3_inc_ost_y2, 
                                              lsl_rate = m3_inc_lsl_y2, 
                                              ren_rate = m3_inc_ren_y2, 
                                              adr_rate = m3_inc_adr_y2, 
                                              oca_rate = m3_inc_oca_y2, 
                                              ple_rate = m3_inc_ple_y2, 
                                              sbl_rate = m3_inc_sbl_y2, 
                                              con_rate = m3_inc_con_y2, 
                                              bon_rate = m3_inc_bon_y2, 
                                              fra_rate = m3_inc_fra_y2, 
                                              thy_rate = m3_inc_thy_y2, 
                                              aaa_rate = m3_inc_aaa_y2)
