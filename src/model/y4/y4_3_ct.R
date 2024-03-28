
# Simulate Year 4 CT Scan Outcomes ----------------------------------------

y4_ct_list <- ct(input_df = y4_lhc_pos,
                 exclusion_rate = ct_exclusion_rate_y4,
                 dna_rate = ct_dna_rate_y4,
                 dna_rebook_rate = ct_dna_rebook_rate_y4,
                 positive = ct_scan_positive_y4,
                 negative_fu = ct_scan_negative_24m_fu_y4)

y4_ct_24M_FU_output = y4_ct_list[[5]] ## This will either feed into the 24M FU cohort within y4 or it will decide the population cohort for Y4 LHC
y4_ct_output = y4_ct_list[[6]]

# Creating outputs to inform m24 reinvites

y4_ct_opt_out <- y4_ct_list[[7]] %>%
  select(1:3) 
