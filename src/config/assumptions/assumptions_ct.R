
# CT Scan Attendance --------------------------------------------------------

ct_exclusion_rate <- 0.03
ct_dna_rate <- 0.08
ct_attend_rate <- 1 - ct_exclusion_rate - ct_dna_rate

# DNA Rebooking -----------------------------------------------------------

ct_dna_rebook_rate <- 0.50

# Indeterminate CT Scan Rate ----------------------------------------------

ct_indeterminate_rate <- 0.132

# CT Scan Findings --------------------------------------------------------

ct_scan_positive <- 0.059
ct_scan_negative <- 1 - ct_scan_positive
ct_scan_negative_24m_fu <- 0.857
