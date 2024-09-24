
# Simulate Year 5 CT Scan Outcomes ----------------------------------------

y5_ct_list <- ct(input_df = y5_lhc_pos,
                 exclusion_rate = ct_exclusion_rate_y5,
                 dna_rate = ct_dna_rate_y5,
                 dna_rebook_rate = ct_dna_rebook_rate_y5,
                 positive = ct_scan_positive_y5,
                 negative_fu = ct_scan_negative_24m_fu_y5)

y5_ct_24M_FU_output = y5_ct_list[[5]] ## This will either feed into the 24M FU cohort within y5 or it will decide the population cohort for y5 LHC
y5_ct_output = y5_ct_list[[6]]

# Creating outputs to inform m24 reinvites

y5_ct_opt_out <- y5_ct_list[[7]] %>%
  select(1:3) 

# Creating ct exclusions output

y5_ct_ex <- y5_ct_list[[1]]
