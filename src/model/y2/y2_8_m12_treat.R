
# Simulate Year 2 12-month FU Treatment Groups --------------------------------

y2_m12_treat_groups_list <- m12_treat_groups(input_df = y2_m12_FU_input_df,
                                             dna_rate = m12_scan_dna_rate_y2,
                                             rebook_rate= m12_scan_rebook_rate_y2,
                                             diagnostic_rate = m12_diagnostic_rate_y2,
                                             incidental_rate = m12_incidental_rate_y2,
                                             nodule_rate = m12_nodule_rate_y2,
                                             follow_up_rate = m12_m12_fu_rate_y2,
                                             cancer_rate = m12_cancer_rate_y2)

y2_m12_add_diags_df <- y2_m12_treat_groups_list[[3]]
y2_m12_cancer_df <- y2_m12_treat_groups_list[[6]]
y2_m12_inc_df <- y2_m12_treat_groups_list[[8]]


# Simulate Year 2 12-month Treatment Modalities ----------------------------

y2_m12_modalities_df <- m12_treatment_modalities(input_df = y2_m12_cancer_df,
                                                 surgery_rate = m12_treatment_surgery_y2,
                                                 surg_ac_rate = m12_treatment_surg_ac_y2,
                                                 sabr_rate = m12_treatment_sabr_y2,
                                                 xrt_rate = m12_treatment_xrt_y2,
                                                 chemrad_rate = m12_treatment_chemrad_y2,
                                                 chemo_rate = m12_treatment_chemo_y2,
                                                 nadj_imm_rate = m12_treatment_nadj_imm_y2)

y2_m12_m24_FU_input_df <- y2_m12_treat_groups_list[[4]] 

y2_m24_FU_input_df <- bind_rows(y2_ct_24M_FU_output, y2_m3_m24_FU_input_df, y2_m12_m24_FU_input_df)

# Creating outputs to inform m24 reinvites

y2_m12_opt_out <- y2_m12_treat_groups_list[[7]] %>%
  select(1:3)


# Simulate Year 2 12-Month Incidental Findings ----------------------------

y2_m12_incidental_df <- m12_incidental_findings(input_df = y2_m12_inc_df,
                                                cc_rate = m12_inc_cc_y2, 
                                                emp_rate = m12_inc_emp_y2, 
                                                ila_rate = m12_inc_ila_y2, 
                                                meda_rate = m12_inc_meda_y2, 
                                                avc_rate = m12_inc_avc_y2, 
                                                bro_rate = m12_inc_bro_y2, 
                                                rbr_rate = m12_inc_rbr_y2, 
                                                taa_rate = m12_inc_taa_y2, 
                                                ost_rate = m12_inc_ost_y2, 
                                                lsl_rate = m12_inc_lsl_y2, 
                                                ren_rate = m12_inc_ren_y2, 
                                                adr_rate = m12_inc_adr_y2, 
                                                oca_rate = m12_inc_oca_y2, 
                                                ple_rate = m12_inc_ple_y2, 
                                                sbl_rate = m12_inc_sbl_y2, 
                                                con_rate = m12_inc_con_y2, 
                                                fra_rate = m12_inc_fra_y2, 
                                                thy_rate = m12_inc_thy_y2, 
                                                aaa_rate = m12_inc_aaa_y2, 
                                                tub_rate = m12_inc_tub_y2)


# Summarise Year 2 12-Month Incidental Findings ---------------------------

y2_m12_incidental_summary <- incidental_summaries(y2_m12_incidental_df)
