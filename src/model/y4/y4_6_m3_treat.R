
# Simulate Year 4 3-month FU Treatment Groups --------------------------------

y4_m3_treat_groups_list <- m3_treat_groups(input_df = y4_m3_FU_input_df,
                                           dna_rate = m3_scan_dna_rate_y4,
                                           rebook_rate= m3_scan_rebook_rate_y4,
                                           diagnostic_rate = m3_diagnostic_rate_y4,
                                           incidental_rate = m3_incidental_rate_y4,
                                           follow_up_rate = m3_m12_fu_rate_y4,
                                           cancer_rate = m3_cancer_rate_y4,
                                           m24_fu_rate = m3_m24_fu_rate_y4)

y4_m3_add_diags_df <- y4_m3_treat_groups_list[[3]]
y4_m3_cancer_df <- y4_m3_treat_groups_list[[6]]
y4_m3_inc_df <- y4_m3_treat_groups_list[[8]]
y4_m3_m24_FU_input_df <- y4_m3_treat_groups_list[[9]]


# Simulate Year 4 3-month Treatment Modalities ----------------------------

y4_m3_modalities_df <- m3_treatment_modalities(input_df = y4_m3_cancer_df,
                                               surgery_rate = m3_treatment_surgery_y4,
                                               surg_ac_rate = m3_treatment_surg_ac_y4,
                                               sabr_rate = m3_treatment_sabr_y4,
                                               xrt_rate = m3_treatment_xrt_y4,
                                               chemrad_rate = m3_treatment_chemrad_y4,
                                               chemo_rate = m3_treatment_chemo_y4,
                                               nadj_imm_rate = m3_treatment_nadj_imm_y4)

y4_m12_FU_input_df <- y4_m3_treat_groups_list[[4]]

# Creating outputs to inform m24 reinvites

y4_m3_opt_out <- y4_m3_treat_groups_list[[7]] %>%
  select(1:3)


# Simulate Year 4 3-Month Incidental Findings -----------------------------

y4_m3_incidental_df <- m3_incidental_findings(input_df = y4_m3_inc_df,
                                              cc_rate = m3_inc_cc_y4, 
                                              emp_rate = m3_inc_emp_y4, 
                                              ila_rate = m3_inc_ila_y4, 
                                              meda_rate = m3_inc_meda_y4, 
                                              avc_rate = m3_inc_avc_y4, 
                                              bro_rate = m3_inc_bro_y4, 
                                              rbr_rate = m3_inc_rbr_y4, 
                                              taa_rate = m3_inc_taa_y4, 
                                              ost_rate = m3_inc_ost_y4, 
                                              lsl_rate = m3_inc_lsl_y4, 
                                              ren_rate = m3_inc_ren_y4, 
                                              adr_rate = m3_inc_adr_y4, 
                                              oca_rate = m3_inc_oca_y4, 
                                              ple_rate = m3_inc_ple_y4, 
                                              sbl_rate = m3_inc_sbl_y4, 
                                              con_rate = m3_inc_con_y4, 
                                              bon_rate = m3_inc_bon_y4, 
                                              fra_rate = m3_inc_fra_y4, 
                                              thy_rate = m3_inc_thy_y4, 
                                              aaa_rate = m3_inc_aaa_y4)
