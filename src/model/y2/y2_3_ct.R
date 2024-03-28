
# Simulate Year 2 CT Scan Outcomes ----------------------------------------

y2_ct_list <- ct(input_df = y2_lhc_pos,
                 exclusion_rate = ct_exclusion_rate_y2,
                 dna_rate = ct_dna_rate_y2,
                 dna_rebook_rate = ct_dna_rebook_rate_y2,
                 positive = ct_scan_positive_y2,
                 negative_fu = ct_scan_negative_24m_fu_y2)

y2_ct_24M_FU_output = y2_ct_list[[5]] ## This will either feed into the 24M FU cohort within Y2 or it will decide the population cohort for Y4 LHC
y2_ct_output = y2_ct_list[[6]]

# Creating outputs to inform m24 reinvites

y2_ct_opt_out <- y2_ct_list[[7]] %>%
  select(1:3) 
