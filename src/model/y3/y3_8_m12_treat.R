
# Simulate Year 3 12-month FU Treatment Groups --------------------------------

y3_m12_treat_groups_list <- m12_treat_groups(input_df = y3_m12_FU_input_df,
                                             dna_rate = m12_scan_dna_rate_y3,
                                             rebook_rate= m12_scan_rebook_rate_y3,
                                             diagnostic_rate = m12_diagnostic_rate_y3,
                                             incidental_rate = m12_incidental_rate_y3,
                                             nodule_rate = m12_nodule_rate_y3,
                                             follow_up_rate = m12_m12_fu_rate_y3,
                                             cancer_rate = m12_cancer_rate_y3)

y3_m12_add_diags_df <- y3_m12_treat_groups_list[[3]]
y3_m12_cancer_df <- y3_m12_treat_groups_list[[6]]
y3_m12_inc_df <- y3_m12_treat_groups_list[[8]]


# Simulate Year 3 12-month Treatment Modalities ----------------------------

y3_m12_modalities_df <- m12_treatment_modalities(input_df = y3_m12_cancer_df,
                                                 surgery_rate = m12_treatment_surgery_y3,
                                                 surg_ac_rate = m12_treatment_surg_ac_y3,
                                                 sabr_rate = m12_treatment_sabr_y3,
                                                 xrt_rate = m12_treatment_xrt_y3,
                                                 chemrad_rate = m12_treatment_chemrad_y3,
                                                 chemo_rate = m12_treatment_chemo_y3,
                                                 nadj_imm_rate = m12_treatment_nadj_imm_y3)

y3_m12_m24_FU_input_df <- y3_m12_treat_groups_list[[4]] 

y3_m24_FU_input_df <- bind_rows(y3_ct_24M_FU_output, y3_m3_m24_FU_input_df, y3_m12_m24_FU_input_df)

# Creating outputs to inform m24 reinvites

y3_m12_opt_out <- y3_m12_treat_groups_list[[7]] %>%
  select(1:3)


# Simulate Year 3 12-Month Incidental Findings ----------------------------

y3_m12_incidental_df <- m12_incidental_findings(input_df = y3_m12_inc_df,
                                                cc_rate = m12_inc_cc_y3, 
                                                emp_rate = m12_inc_emp_y3, 
                                                ila_rate = m12_inc_ila_y3, 
                                                meda_rate = m12_inc_meda_y3, 
                                                avc_rate = m12_inc_avc_y3, 
                                                bro_rate = m12_inc_bro_y3, 
                                                rbr_rate = m12_inc_rbr_y3, 
                                                taa_rate = m12_inc_taa_y3, 
                                                ost_rate = m12_inc_ost_y3, 
                                                lsl_rate = m12_inc_lsl_y3, 
                                                ren_rate = m12_inc_ren_y3, 
                                                adr_rate = m12_inc_adr_y3, 
                                                oca_rate = m12_inc_oca_y3, 
                                                ple_rate = m12_inc_ple_y3, 
                                                sbl_rate = m12_inc_sbl_y3, 
                                                con_rate = m12_inc_con_y3, 
                                                fra_rate = m12_inc_fra_y3, 
                                                thy_rate = m12_inc_thy_y3, 
                                                aaa_rate = m12_inc_aaa_y3, 
                                                tub_rate = m12_inc_tub_y3)


# Summarise Year 3 12-Month Incidental Findings ---------------------------

y3_m12_incidental_summary <- incidental_summaries(y3_m12_incidental_df)
