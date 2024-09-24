
# Simulate Year 1 CT Scan Outcomes ----------------------------------------

y1_ct_list <- ct(input_df = y1_lhc_pos,
                 exclusion_rate = ct_exclusion_rate_y1,
                 dna_rate = ct_dna_rate_y1,
                 dna_rebook_rate = ct_dna_rebook_rate_y1,
                 positive = ct_scan_positive_y1,
                 negative_fu = ct_scan_negative_24m_fu_y1)

y1_ct_24M_FU_output = y1_ct_list[[5]] ## This will either feed into the 24M FU cohort within y1 or it will decide the population cohort for Y4 LHC
y1_ct_output = y1_ct_list[[6]]

# Creating outputs to inform m24 reinvites

y1_ct_opt_out <- y1_ct_list[[7]] %>%
  select(1:3) 

# Creating ct exclusions output

y1_ct_ex <- y1_ct_list[[1]]
