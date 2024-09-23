
# Simulate Year 4 12-month FU Treatment Groups --------------------------------

y4_m12_treat_groups_list <- m12_treat_groups(input_df = y4_m12_FU_input_df,
                                             dna_rate = m12_scan_dna_rate_y4,
                                             rebook_rate= m12_scan_rebook_rate_y4,
                                             diagnostic_rate = m12_diagnostic_rate_y4,
                                             incidental_rate = m12_incidental_rate_y4,
                                             follow_up_rate = m12_m12_fu_rate_y4,
                                             cancer_rate = m12_cancer_rate_y4)

y4_m12_add_diags_df <- y4_m12_treat_groups_list[[3]]
y4_m12_cancer_df <- y4_m12_treat_groups_list[[6]]
y4_m12_inc_df <- y4_m12_treat_groups_list[[8]]


# Simulate Year 4 12-month Treatment Modalities ----------------------------

y4_m12_modalities_df <- m12_treatment_modalities(input_df = y4_m12_cancer_df,
                                                 surgery_rate = m12_treatment_surgery_y4,
                                                 surg_ac_rate = m12_treatment_surg_ac_y4,
                                                 sabr_rate = m12_treatment_sabr_y4,
                                                 xrt_rate = m12_treatment_xrt_y4,
                                                 chemrad_rate = m12_treatment_chemrad_y4,
                                                 chemo_rate = m12_treatment_chemo_y4,
                                                 nadj_imm_rate = m12_treatment_nadj_imm_y4)

y4_m12_m24_FU_input_df <- y4_m12_treat_groups_list[[4]] 

y4_m24_FU_input_df <- bind_rows(y4_m3_m24_FU_input_df, y4_m12_m24_FU_input_df)

# Creating outputs to inform m24 reinvites

y4_m12_opt_out <- y4_m12_treat_groups_list[[7]] %>%
  select(1:3)


# Simulate Year 4 12-Month Incidental Findings ----------------------------

y4_m12_incidental_df <- m12_incidental_findings(input_df = y4_m12_inc_df,
                                                cc_rate = m12_inc_cc_y4, 
                                                emp_rate = m12_inc_emp_y4, 
                                                ila_rate = m12_inc_ila_y4, 
                                                meda_rate = m12_inc_meda_y4, 
                                                avc_rate = m12_inc_avc_y4, 
                                                bro_rate = m12_inc_bro_y4, 
                                                rbr_rate = m12_inc_rbr_y4, 
                                                taa_rate = m12_inc_taa_y4, 
                                                ost_rate = m12_inc_ost_y4, 
                                                lsl_rate = m12_inc_lsl_y4, 
                                                ren_rate = m12_inc_ren_y4, 
                                                adr_rate = m12_inc_adr_y4, 
                                                oca_rate = m12_inc_oca_y4, 
                                                ple_rate = m12_inc_ple_y4, 
                                                sbl_rate = m12_inc_sbl_y4, 
                                                con_rate = m12_inc_con_y4, 
                                                fra_rate = m12_inc_fra_y4, 
                                                thy_rate = m12_inc_thy_y4, 
                                                aaa_rate = m12_inc_aaa_y4, 
                                                tub_rate = m12_inc_tub_y4)


# Summarise Year 4 12-Month Incidental Findings ---------------------------

y4_m12_incidental_summary <- incidental_summaries(y4_m12_incidental_df)
