
# Simulate Year 1 12-month FU Treatment Groups --------------------------------

y1_m12_treat_groups_list <- m12_treat_groups(input_df = y1_m12_FU_input_df,
                                             dna_rate = m12_scan_dna_rate_y1,
                                             rebook_rate= m12_scan_rebook_rate_y1,
                                             diagnostic_rate = m12_diagnostic_rate_y1,
                                             incidental_rate = m12_incidental_rate_y1,
                                             nodule_rate = m12_nodule_rate_y1,
                                             follow_up_rate = m12_m24_fu_rate_y1,
                                             cancer_rate = m12_cancer_rate_y1)

y1_m12_add_diags_df <- y1_m12_treat_groups_list[[3]]
y1_m12_cancer_df <- y1_m12_treat_groups_list[[6]]
y1_m12_inc_df <- y1_m12_treat_groups_list[[8]]


# Simulate Year 1 12-month Treatment Modalities ----------------------------

y1_m12_modalities_df <- m12_treatment_modalities(input_df = y1_m12_cancer_df,
                                                 surgery_rate = m12_treatment_surgery_y1,
                                                 surg_ac_rate = m12_treatment_surg_ac_y1,
                                                 sabr_rate = m12_treatment_sabr_y1,
                                                 xrt_rate = m12_treatment_xrt_y1,
                                                 chemrad_rate = m12_treatment_chemrad_y1,
                                                 chemo_rate = m12_treatment_chemo_y1,
                                                 nadj_imm_rate = m12_treatment_nadj_imm_y1)

y1_m12_m24_FU_input_df <- y1_m12_treat_groups_list[[4]] 

y1_m24_FU_input_df <- bind_rows(y1_m3_m24_FU_input_df, y1_m12_m24_FU_input_df)

# Creating outputs to inform m24 reinvites

y1_m12_opt_out <- y1_m12_treat_groups_list[[7]] %>%
  select(1:3)


# Simulate Year 1 12-Month Incidental Findings ----------------------------

y1_m12_incidental_df <- m12_incidental_findings(input_df = y1_m12_inc_df,
                                                cc_rate = m12_inc_cc_y1, 
                                                emp_rate = m12_inc_emp_y1, 
                                                ila_rate = m12_inc_ila_y1, 
                                                meda_rate = m12_inc_meda_y1, 
                                                avc_rate = m12_inc_avc_y1, 
                                                bro_rate = m12_inc_bro_y1, 
                                                rbr_rate = m12_inc_rbr_y1, 
                                                taa_rate = m12_inc_taa_y1, 
                                                ost_rate = m12_inc_ost_y1, 
                                                lsl_rate = m12_inc_lsl_y1, 
                                                ren_rate = m12_inc_ren_y1, 
                                                adr_rate = m12_inc_adr_y1, 
                                                oca_rate = m12_inc_oca_y1, 
                                                ple_rate = m12_inc_ple_y1, 
                                                sbl_rate = m12_inc_sbl_y1, 
                                                con_rate = m12_inc_con_y1, 
                                                fra_rate = m12_inc_fra_y1, 
                                                thy_rate = m12_inc_thy_y1, 
                                                aaa_rate = m12_inc_aaa_y1, 
                                                tub_rate = m12_inc_tub_y1)


# Summarise Year 1 12-Month Incidental Findings ---------------------------

y1_m12_incidental_summary <- incidental_summaries(y1_m12_incidental_df)
