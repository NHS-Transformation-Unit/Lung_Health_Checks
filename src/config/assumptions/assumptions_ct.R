
# CT Scan Attendance --------------------------------------------------------

ct_exclusion_rate_y1 <- assumptions_ct[[1,4]]
ct_exclusion_rate_y2 <- assumptions_ct[[1,5]]
ct_exclusion_rate_y3 <- assumptions_ct[[1,6]]
ct_exclusion_rate_y4 <- assumptions_ct[[1,7]]
ct_exclusion_rate_y5 <- assumptions_ct[[1,8]]

# DNA ---------------------------------------------------------------------

ct_dna_rate_y1 <- assumptions_ct[[2,4]]
ct_dna_rate_y2 <- assumptions_ct[[2,5]]
ct_dna_rate_y3 <- assumptions_ct[[2,6]]
ct_dna_rate_y4 <- assumptions_ct[[2,7]]
ct_dna_rate_y5 <- assumptions_ct[[2,8]]

# DNA Rebooking -----------------------------------------------------------

ct_dna_rebook_rate_y1 <- assumptions_ct[[3,4]]
ct_dna_rebook_rate_y2 <- assumptions_ct[[3,5]]
ct_dna_rebook_rate_y3 <- assumptions_ct[[3,6]]
ct_dna_rebook_rate_y4 <- assumptions_ct[[3,7]]
ct_dna_rebook_rate_y5 <- assumptions_ct[[3,8]]

# CT Scan Findings --------------------------------------------------------

ct_scan_positive_y1 <- assumptions_ct[[4,4]]
ct_scan_positive_y2 <- assumptions_ct[[4,5]]
ct_scan_positive_y3 <- assumptions_ct[[4,6]]
ct_scan_positive_y4 <- assumptions_ct[[4,7]]
ct_scan_positive_y5 <- assumptions_ct[[4,8]]

ct_scan_negative_y1 <- 1 - ct_scan_positive_y1
ct_scan_negative_y2 <- 1 - ct_scan_positive_y2
ct_scan_negative_y3 <- 1 - ct_scan_positive_y3
ct_scan_negative_y4 <- 1 - ct_scan_positive_y4
ct_scan_negative_y5 <- 1 - ct_scan_positive_y5

ct_scan_negative_24m_fu_y1 <- assumptions_ct[[5,4]]
ct_scan_negative_24m_fu_y2 <- assumptions_ct[[5,5]]
ct_scan_negative_24m_fu_y3 <- assumptions_ct[[5,6]]
ct_scan_negative_24m_fu_y4 <- assumptions_ct[[5,7]]
ct_scan_negative_24m_fu_y5 <- assumptions_ct[[5,8]]