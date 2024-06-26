
# Simulate Year 5 24-month FU Treatment Groups --------------------------------

y5_m24_treat_groups_list <- m24_treat_groups(input_df = y5_m24_FU_input_df,
                                             dna_rate = m24_scan_dna_rate_y5,
                                             rebook_rate= m24_scan_rebook_rate_y5,
                                             diagnostic_rate = m24_diagnostic_rate_y5,
                                             incidental_rate = m24_incidental_rate_y5,
                                             follow_up_rate = m24_m24_fu_rate_y5,
                                             cancer_rate = m24_cancer_rate_y5)

y5_m24_add_diags_df <- y5_m24_treat_groups_list[[3]]
y5_m24_cancer_df <- y5_m24_treat_groups_list[[6]]
y5_m24_opt_out <- y5_m24_treat_groups_list[[7]] %>%
  select(1:3)
y5_m48_FU_input_df <- y5_m24_treat_groups_list[[4]]
y5_m24_inc_df <- y5_m24_treat_groups_list[[8]]

# Simulate Year 5 24-month Treatment Modalities ----------------------------

y5_m24_modalities_df <- m24_treatment_modalities(input_df = y5_m24_cancer_df,
                                                 surgery_rate = m24_treatment_surgery_y5,
                                                 surg_ac_rate = m24_treatment_surg_ac_y5,
                                                 sabr_rate = m24_treatment_sabr_y5,
                                                 xrt_rate = m24_treatment_xrt_y5,
                                                 chemrad_rate = m24_treatment_chemrad_y5,
                                                 chemo_rate = m24_treatment_chemo_y5,
                                                 nadj_imm_rate = m24_treatment_nadj_imm_y5)


# Simulate Year 5 24-Month Incidental Findings ----------------------------

y5_m24_incidental_df <- m24_incidental_findings(input_df = y5_m24_inc_df,
                                                cc_rate = m24_inc_cc_y5, 
                                                emp_rate = m24_inc_emp_y5, 
                                                ila_rate = m24_inc_ila_y5, 
                                                meda_rate = m24_inc_meda_y5, 
                                                avc_rate = m24_inc_avc_y5, 
                                                bro_rate = m24_inc_bro_y5, 
                                                rbr_rate = m24_inc_rbr_y5, 
                                                taa_rate = m24_inc_taa_y5, 
                                                ost_rate = m24_inc_ost_y5, 
                                                lsl_rate = m24_inc_lsl_y5, 
                                                ren_rate = m24_inc_ren_y5, 
                                                adr_rate = m24_inc_adr_y5, 
                                                oca_rate = m24_inc_oca_y5, 
                                                ple_rate = m24_inc_ple_y5, 
                                                sbl_rate = m24_inc_sbl_y5, 
                                                con_rate = m24_inc_con_y5, 
                                                fra_rate = m24_inc_fra_y5, 
                                                thy_rate = m24_inc_thy_y5, 
                                                aaa_rate = m24_inc_aaa_y5, 
                                                tub_rate = m24_inc_tub_y5)
