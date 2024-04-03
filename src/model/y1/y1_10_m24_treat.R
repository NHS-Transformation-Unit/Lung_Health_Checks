
# Simulate Year 1 24-month FU Treatment Groups --------------------------------

y1_m24_treat_groups_list <- m24_treat_groups(input_df = y1_m24_FU_input_df,
                                             dna_rate = m24_scan_dna_rate_y1,
                                             rebook_rate= m24_scan_rebook_rate_y1,
                                             diagnostic_rate = m24_diagnostic_rate_y1,
                                             incidental_rate = m24_incidental_rate_y1,
                                             follow_up_rate = m24_m24_fu_rate_y1,
                                             cancer_rate = m24_cancer_rate_y1)

y1_m24_add_diags_df <- y1_m24_treat_groups_list[[3]]
y1_m24_cancer_df <- y1_m24_treat_groups_list[[6]]
y1_m24_opt_out <- y1_m24_treat_groups_list[[7]] %>%
  select(1:3)
y1_m48_FU_input_df <- y1_m24_treat_groups_list[[4]]
y1_m24_inc_df <- y1_m24_treat_groups_list[[8]]

# Simulate Year 1 24-month Treatment Modalities ----------------------------

y1_m24_modalities_df <- m24_treatment_modalities(input_df = y1_m24_cancer_df,
                                                 surgery_rate = m24_treatment_surgery_y1,
                                                 surg_ac_rate = m24_treatment_surg_ac_y1,
                                                 sabr_rate = m24_treatment_sabr_y1,
                                                 xrt_rate = m24_treatment_xrt_y1,
                                                 chemrad_rate = m24_treatment_chemrad_y1,
                                                 chemo_rate = m24_treatment_chemo_y1,
                                                 nadj_imm_rate = m24_treatment_nadj_imm_y1)


# Simulate Year 1 24-Month Incidental Findings ----------------------------

y1_m24_incidental_df <- m24_incidental_findings(input_df = y1_m24_inc_df,
                                                cc_rate = m24_inc_cc_y1, 
                                                emp_rate = m24_inc_emp_y1, 
                                                ila_rate = m24_inc_ila_y1, 
                                                meda_rate = m24_inc_meda_y1, 
                                                avc_rate = m24_inc_avc_y1, 
                                                bro_rate = m24_inc_bro_y1, 
                                                rbr_rate = m24_inc_rbr_y1, 
                                                taa_rate = m24_inc_taa_y1, 
                                                ost_rate = m24_inc_ost_y1, 
                                                lsl_rate = m24_inc_lsl_y1, 
                                                ren_rate = m24_inc_ren_y1, 
                                                adr_rate = m24_inc_adr_y1, 
                                                oca_rate = m24_inc_oca_y1, 
                                                ple_rate = m24_inc_ple_y1, 
                                                sbl_rate = m24_inc_sbl_y1, 
                                                con_rate = m24_inc_con_y1, 
                                                bon_rate = m24_inc_bon_y1, 
                                                fra_rate = m24_inc_fra_y1, 
                                                thy_rate = m24_inc_thy_y1, 
                                                aaa_rate = m24_inc_aaa_y1)
