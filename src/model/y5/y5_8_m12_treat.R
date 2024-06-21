
# Simulate Year 5 12-month FU Treatment Groups --------------------------------

y5_m12_treat_groups_list <- m12_treat_groups(input_df = y5_m12_FU_input_df,
                                             dna_rate = m12_scan_dna_rate_y5,
                                             rebook_rate= m12_scan_rebook_rate_y5,
                                             diagnostic_rate = m12_diagnostic_rate_y5,
                                             incidental_rate = m12_incidental_rate_y5,
                                             follow_up_rate = m12_m12_fu_rate_y5,
                                             cancer_rate = m12_cancer_rate_y5)

y5_m12_add_diags_df <- y5_m12_treat_groups_list[[3]]
y5_m12_cancer_df <- y5_m12_treat_groups_list[[6]]
y5_m12_inc_df <- y5_m12_treat_groups_list[[8]]


# Simulate Year 5 12-month Treatment Modalities ----------------------------

y5_m12_modalities_df <- m12_treatment_modalities(input_df = y5_m12_cancer_df,
                                                 surgery_rate = m12_treatment_surgery_y5,
                                                 surg_ac_rate = m12_treatment_surg_ac_y5,
                                                 sabr_rate = m12_treatment_sabr_y5,
                                                 xrt_rate = m12_treatment_xrt_y5,
                                                 chemrad_rate = m12_treatment_chemrad_y5,
                                                 chemo_rate = m12_treatment_chemo_y5,
                                                 nadj_imm_rate = m12_treatment_nadj_imm_y5)

y5_m12_m24_FU_input_df <- y5_m12_treat_groups_list[[4]] 

y5_m24_FU_input_df <- bind_rows(y5_m3_m24_FU_input_df, y5_m12_m24_FU_input_df)

# Creating outputs to inform m24 reinvites

y5_m12_opt_out <- y5_m12_treat_groups_list[[7]] %>%
  select(1:3)


# Simulate Year 5 12-Month Incidental Findings ----------------------------

y5_m12_incidental_df <- m12_incidental_findings(input_df = y5_m12_inc_df,
                                                cc_rate = m12_inc_cc_y5, 
                                                emp_rate = m12_inc_emp_y5, 
                                                ila_rate = m12_inc_ila_y5, 
                                                meda_rate = m12_inc_meda_y5, 
                                                avc_rate = m12_inc_avc_y5, 
                                                bro_rate = m12_inc_bro_y5, 
                                                rbr_rate = m12_inc_rbr_y5, 
                                                taa_rate = m12_inc_taa_y5, 
                                                ost_rate = m12_inc_ost_y5, 
                                                lsl_rate = m12_inc_lsl_y5, 
                                                ren_rate = m12_inc_ren_y5, 
                                                adr_rate = m12_inc_adr_y5, 
                                                oca_rate = m12_inc_oca_y5, 
                                                ple_rate = m12_inc_ple_y5, 
                                                sbl_rate = m12_inc_sbl_y5, 
                                                con_rate = m12_inc_con_y5, 
                                                bon_rate = m12_inc_bon_y5, 
                                                fra_rate = m12_inc_fra_y5, 
                                                thy_rate = m12_inc_thy_y5, 
                                                aaa_rate = m12_inc_aaa_y5)
