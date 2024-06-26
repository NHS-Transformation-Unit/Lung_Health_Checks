
# Simulate Year 2 24-month FU Treatment Groups --------------------------------

y2_m24_treat_groups_list <- m24_treat_groups(input_df = y2_m24_FU_input_df,
                                             dna_rate = m24_scan_dna_rate_y2,
                                             rebook_rate= m24_scan_rebook_rate_y2,
                                             diagnostic_rate = m24_diagnostic_rate_y2,
                                             incidental_rate = m24_incidental_rate_y2,
                                             follow_up_rate = m24_m24_fu_rate_y2,
                                             cancer_rate = m24_cancer_rate_y2)

y2_m24_add_diags_df <- y2_m24_treat_groups_list[[3]]
y2_m24_cancer_df <- y2_m24_treat_groups_list[[6]]
y2_m24_opt_out <- y2_m24_treat_groups_list[[7]] %>%
  select(1:3)
y2_m48_FU_input_df <- y2_m24_treat_groups_list[[4]]
y2_m24_inc_df <- y2_m24_treat_groups_list[[8]]

# Simulate Year 2 24-month Treatment Modalities ----------------------------

y2_m24_modalities_df <- m24_treatment_modalities(input_df = y2_m24_cancer_df,
                                                 surgery_rate = m24_treatment_surgery_y2,
                                                 surg_ac_rate = m24_treatment_surg_ac_y2,
                                                 sabr_rate = m24_treatment_sabr_y2,
                                                 xrt_rate = m24_treatment_xrt_y2,
                                                 chemrad_rate = m24_treatment_chemrad_y2,
                                                 chemo_rate = m24_treatment_chemo_y2,
                                                 nadj_imm_rate = m24_treatment_nadj_imm_y2)


# Simulate Year 2 24-Month Incidental Findings ----------------------------

y2_m24_incidental_df <- m24_incidental_findings(input_df = y2_m24_inc_df,
                                                cc_rate = m24_inc_cc_y2, 
                                                emp_rate = m24_inc_emp_y2, 
                                                ila_rate = m24_inc_ila_y2, 
                                                meda_rate = m24_inc_meda_y2, 
                                                avc_rate = m24_inc_avc_y2, 
                                                bro_rate = m24_inc_bro_y2, 
                                                rbr_rate = m24_inc_rbr_y2, 
                                                taa_rate = m24_inc_taa_y2, 
                                                ost_rate = m24_inc_ost_y2, 
                                                lsl_rate = m24_inc_lsl_y2, 
                                                ren_rate = m24_inc_ren_y2, 
                                                adr_rate = m24_inc_adr_y2, 
                                                oca_rate = m24_inc_oca_y2, 
                                                ple_rate = m24_inc_ple_y2, 
                                                sbl_rate = m24_inc_sbl_y2, 
                                                con_rate = m24_inc_con_y2, 
                                                fra_rate = m24_inc_fra_y2, 
                                                thy_rate = m24_inc_thy_y2, 
                                                aaa_rate = m24_inc_aaa_y2, 
                                                aaa_rate = m24_inc_tub_y2)
