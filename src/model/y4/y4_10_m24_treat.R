
# Simulate Year 4 24-month FU Treatment Groups --------------------------------

y4_m24_treat_groups_list <- m24_treat_groups(input_df = y4_m24_FU_input_df,
                                             dna_rate = m24_scan_dna_rate,
                                             rebook_rate= m24_scan_rebook_rate,
                                             diagnostic_rate = m24_diagnostic_rate,
                                             incidental_rate = m24_incidental_rate,
                                             follow_up_rate = m24_m24_fu_rate,
                                             cancer_rate = m24_cancer_rate)

y4_m24_add_diags_df <- y4_m24_treat_groups_list[[2]]
y4_m24_cancer_df <- y4_m24_treat_groups_list[[5]]


# Simulate Year 4 24-month Treatment Modalities ----------------------------

y4_m24_modalities_df <- m24_treatment_modalities(input_df = y4_m24_cancer_df,
                                                 surgery_rate = initial_treatment_surgery_y4,
                                                 surg_ac_rate = initial_treatment_surg_ac_y4,
                                                 sabr_rate = initial_treatment_sabr_y4,
                                                 xrt_rate = initial_treatment_xrt_y4,
                                                 chemrad_rate = initial_treatment_chemrad_y4,
                                                 chemo_rate = initial_treatment_chemo_y4,
                                                 nadj_imm_rate = initial_treatment_nadj_imm_y4)

y4_m48_FU_input_df <- y4_m24_treat_groups_list[[4]]

# Creating outputs to inform m24 reinvites

y4_m24_opt_out <- y4_m24_treat_groups_list[[7]] %>%
  select(1:3)

# Binding all m24 reinvite outputs together

y6_repeat_df <-bind_rows(y4_lhc_opt_out,
                         y4_lhc_dna_opt_out,
                         y4_lhc_neg_ri,
                         y4_ct_opt_out,
                         y4_m3_opt_out,
                         y4_m12_opt_out,
                         y4_m24_opt_out)

y6_repeat_df <- y6_repeat_df %>%
  summarize(total_average = n() / length(unique(Trial)))

y6_repeat_input <- y6_repeat_df[1, 1]
