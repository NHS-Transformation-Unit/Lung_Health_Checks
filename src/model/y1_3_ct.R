
# Simulate Year 1 CT Scan Outcomes ----------------------------------------

y1_ct_list <- ct(input_df = y1_lhc_pos,
           exclusion_rate = ct_exclusion_rate_y1,
           dna_rate = ct_dna_rate_y1,
           dna_rebook_rate = ct_dna_rebook_rate_y1,
           positive = ct_scan_positive_y1,
           negative_fu = ct_scan_negative_24m_fu_y1)

y1_ct_output = y1_ct_list[[5]]
