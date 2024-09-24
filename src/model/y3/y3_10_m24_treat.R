
# Simulate Year 3 24-month FU Treatment Groups --------------------------------

y3_m24_treat_groups_list <- m24_treat_groups(input_df = y3_m24_FU_input_df,
                                             dna_rate = m24_scan_dna_rate_y3,
                                             rebook_rate= m24_scan_rebook_rate_y3,
                                             diagnostic_rate = m24_diagnostic_rate_y3,
                                             incidental_rate = m24_incidental_rate_y3,
                                             nodule_rate = m24_nodule_rate_y3,
                                             follow_up_rate = m24_m24_fu_rate_y3,
                                             cancer_rate = m24_cancer_rate_y3)

y3_m24_add_diags_df <- y3_m24_treat_groups_list[[3]]
y3_m24_cancer_df <- y3_m24_treat_groups_list[[6]]
y3_m24_opt_out <- y3_m24_treat_groups_list[[7]] %>%
  select(1:3)
y3_m48_FU_input_df <- y3_m24_treat_groups_list[[4]]
y3_m24_inc_df <- y3_m24_treat_groups_list[[8]]

# Simulate Year 3 24-month Treatment Modalities ----------------------------

y3_m24_modalities_df <- m24_treatment_modalities(input_df = y3_m24_cancer_df,
                                                 surgery_rate = m24_treatment_surgery_y3,
                                                 surg_ac_rate = m24_treatment_surg_ac_y3,
                                                 sabr_rate = m24_treatment_sabr_y3,
                                                 xrt_rate = m24_treatment_xrt_y3,
                                                 chemrad_rate = m24_treatment_chemrad_y3,
                                                 chemo_rate = m24_treatment_chemo_y3,
                                                 nadj_imm_rate = m24_treatment_nadj_imm_y3)


# Simulate Year 3 24-Month Incidental Findings ----------------------------

y3_m24_incidental_df <- m24_incidental_findings(input_df = y3_m24_inc_df,
                                                cc_rate = m24_inc_cc_y3, 
                                                emp_rate = m24_inc_emp_y3, 
                                                ila_rate = m24_inc_ila_y3, 
                                                meda_rate = m24_inc_meda_y3, 
                                                avc_rate = m24_inc_avc_y3, 
                                                bro_rate = m24_inc_bro_y3, 
                                                rbr_rate = m24_inc_rbr_y3, 
                                                taa_rate = m24_inc_taa_y3, 
                                                ost_rate = m24_inc_ost_y3, 
                                                lsl_rate = m24_inc_lsl_y3, 
                                                ren_rate = m24_inc_ren_y3, 
                                                adr_rate = m24_inc_adr_y3, 
                                                oca_rate = m24_inc_oca_y3, 
                                                ple_rate = m24_inc_ple_y3, 
                                                sbl_rate = m24_inc_sbl_y3, 
                                                con_rate = m24_inc_con_y3, 
                                                fra_rate = m24_inc_fra_y3, 
                                                thy_rate = m24_inc_thy_y3, 
                                                aaa_rate = m24_inc_aaa_y3, 
                                                tub_rate = m24_inc_tub_y3)


# Summarise Year 3 24-Month Incidental Findings ---------------------------

y3_m24_incidental_summary <- incidental_summaries(y3_m24_incidental_df)
