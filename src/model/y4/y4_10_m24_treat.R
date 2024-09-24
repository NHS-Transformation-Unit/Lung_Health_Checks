
# Simulate Year 4 24-month FU Treatment Groups --------------------------------

y4_m24_treat_groups_list <- m24_treat_groups(input_df = y4_m24_FU_input_df,
                                             dna_rate = m24_scan_dna_rate_y4,
                                             rebook_rate= m24_scan_rebook_rate_y4,
                                             diagnostic_rate = m24_diagnostic_rate_y4,
                                             incidental_rate = m24_incidental_rate_y4,
                                             nodule_rate = m24_nodule_rate_y4,
                                             follow_up_rate = m24_m24_fu_rate_y4,
                                             cancer_rate = m24_cancer_rate_y4)

y4_m24_add_diags_df <- y4_m24_treat_groups_list[[3]]
y4_m24_cancer_df <- y4_m24_treat_groups_list[[6]]
y4_m24_opt_out <- y4_m24_treat_groups_list[[7]] %>%
  select(1:3)
y4_m48_FU_input_df <- y4_m24_treat_groups_list[[4]]
y4_m24_inc_df <- y3_m24_treat_groups_list[[8]]

# Simulate Year 4 24-month Treatment Modalities ----------------------------

y4_m24_modalities_df <- m24_treatment_modalities(input_df = y4_m24_cancer_df,
                                                 surgery_rate = m24_treatment_surgery_y4,
                                                 surg_ac_rate = m24_treatment_surg_ac_y4,
                                                 sabr_rate = m24_treatment_sabr_y4,
                                                 xrt_rate = m24_treatment_xrt_y4,
                                                 chemrad_rate = m24_treatment_chemrad_y4,
                                                 chemo_rate = m24_treatment_chemo_y4,
                                                 nadj_imm_rate = m24_treatment_nadj_imm_y4)


# Simulate Year 4 24-Month Incidental Findings ----------------------------

y4_m24_incidental_df <- m24_incidental_findings(input_df = y4_m24_inc_df,
                                                cc_rate = m24_inc_cc_y4, 
                                                emp_rate = m24_inc_emp_y4, 
                                                ila_rate = m24_inc_ila_y4, 
                                                meda_rate = m24_inc_meda_y4, 
                                                avc_rate = m24_inc_avc_y4, 
                                                bro_rate = m24_inc_bro_y4, 
                                                rbr_rate = m24_inc_rbr_y4, 
                                                taa_rate = m24_inc_taa_y4, 
                                                ost_rate = m24_inc_ost_y4, 
                                                lsl_rate = m24_inc_lsl_y4, 
                                                ren_rate = m24_inc_ren_y4, 
                                                adr_rate = m24_inc_adr_y4, 
                                                oca_rate = m24_inc_oca_y4, 
                                                ple_rate = m24_inc_ple_y4, 
                                                sbl_rate = m24_inc_sbl_y4, 
                                                con_rate = m24_inc_con_y4, 
                                                fra_rate = m24_inc_fra_y4, 
                                                thy_rate = m24_inc_thy_y4, 
                                                aaa_rate = m24_inc_aaa_y4, 
                                                tub_rate = m24_inc_tub_y4)


# Summarise Year 4 24-Month Incidental Findings ---------------------------

y4_m24_incidental_summary <- incidental_summaries(y4_m24_incidental_df)
