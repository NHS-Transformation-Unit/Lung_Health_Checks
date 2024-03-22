
# Simulate Year 1 CT Scan Outcomes ----------------------------------------

y1_ct_list <- ct(input_df = y1_lhc_pos,
           exclusion_rate = ct_exclusion_rate_y1,
           dna_rate = ct_dna_rate_y1,
           dna_rebook_rate = ct_dna_rebook_rate_y1,
           positive = ct_scan_positive_y1,
           negative_fu = ct_scan_negative_24m_fu_y1)

y1_ct_24M_FU_output = y1_ct_list[[5]] ## This will either feed into the 24M FU cohort within Y1 or it will decide the population cohort for Y3 LHC
y1_ct_output = y1_ct_list[[6]]
