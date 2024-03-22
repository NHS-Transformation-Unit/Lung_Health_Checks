
# Simulate Year 3 CT Scan Outcomes ----------------------------------------

y3_ct_list <- ct(input_df = y3_lhc_pos,
                 exclusion_rate = ct_exclusion_rate_y3,
                 dna_rate = ct_dna_rate_y3,
                 dna_rebook_rate = ct_dna_rebook_rate_y3,
                 positive = ct_scan_positive_y3,
                 negative_fu = ct_scan_negative_24m_fu_y3)

y3_ct_24M_FU_output = y3_ct_list[[5]] ## This will either feed into the 24M FU cohort within y3 or it will decide the population cohort for Y4 LHC
y3_ct_output = y3_ct_list[[6]]

# Creating outputs to inform m24 reinvites

y3_ct_opt_out <- y3_ct_list[[7]] %>%
  select(1:3) 
