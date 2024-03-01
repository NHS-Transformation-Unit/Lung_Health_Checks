
# CT Scan Attendance --------------------------------------------------------

ct_exclusion_rate <- assumptions_ct[[1,4]]
ct_dna_rate <- assumptions_ct[[2,4]]
ct_attend_rate <- 1 - ct_exclusion_rate - ct_dna_rate

# DNA Rebooking -----------------------------------------------------------

ct_dna_rebook_rate <- assumptions_ct[[3,4]]

# Indeterminate CT Scan Rate ----------------------------------------------

ct_indeterminate_rate <- assumptions_ct[[4,4]]

# CT Scan Findings --------------------------------------------------------

ct_scan_positive <- assumptions_ct[[5,4]]
ct_scan_negative <- 1 - ct_scan_positive
ct_scan_negative_24m_fu <- assumptions_ct[[6,4]]
