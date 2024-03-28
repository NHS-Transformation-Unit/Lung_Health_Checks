
# Month 24 Scan DNA Rates --------------------------------------------------

m24_scan_dna_rate_y1 <- assumptions_m24_treat[[1,4]]
m24_scan_dna_rate_y2 <- assumptions_m24_treat[[1,5]]
m24_scan_dna_rate_y3 <- assumptions_m24_treat[[1,6]]
m24_scan_dna_rate_y4 <- assumptions_m24_treat[[1,7]]
m24_scan_dna_rate_y5 <- assumptions_m24_treat[[1,8]]

# Month 24 Scan Rebook Rates -----------------------------------------------

m24_scan_rebook_rate_y1 <- assumptions_m24_treat[[2,4]]
m24_scan_rebook_rate_y2 <- assumptions_m24_treat[[2,5]]
m24_scan_rebook_rate_y3 <- assumptions_m24_treat[[2,6]]
m24_scan_rebook_rate_y4 <- assumptions_m24_treat[[2,7]]
m24_scan_rebook_rate_y5 <- assumptions_m24_treat[[2,8]]

# 24 Month Cancer Findings -------------------------------------------------

m24_diagnostic_rate_y1 <- assumptions_m24_treat[[3,4]]
m24_diagnostic_rate_y2 <- assumptions_m24_treat[[3,5]]
m24_diagnostic_rate_y3 <- assumptions_m24_treat[[3,6]]
m24_diagnostic_rate_y4 <- assumptions_m24_treat[[3,7]]
m24_diagnostic_rate_y5 <- assumptions_m24_treat[[3,8]]

m24_incidental_rate_y1 <- assumptions_m24_treat[[4,4]]
m24_incidental_rate_y2 <- assumptions_m24_treat[[4,5]]
m24_incidental_rate_y3 <- assumptions_m24_treat[[4,6]]
m24_incidental_rate_y4 <- assumptions_m24_treat[[4,7]]
m24_incidental_rate_y5 <- assumptions_m24_treat[[4,8]]

m24_m24_fu_rate_y1 <- 1 - m24_diagnostic_rate_y1 - m24_incidental_rate_y1
m24_m24_fu_rate_y2 <- 1 - m24_diagnostic_rate_y2 - m24_incidental_rate_y2
m24_m24_fu_rate_y3 <- 1 - m24_diagnostic_rate_y3 - m24_incidental_rate_y3
m24_m24_fu_rate_y4 <- 1 - m24_diagnostic_rate_y4 - m24_incidental_rate_y4
m24_m24_fu_rate_y5 <- 1 - m24_diagnostic_rate_y5 - m24_incidental_rate_y5

m24_cancer_rate_y1 <- assumptions_m24_treat[[6,4]]
m24_cancer_rate_y2 <- assumptions_m24_treat[[6,5]]
m24_cancer_rate_y3 <- assumptions_m24_treat[[6,6]]
m24_cancer_rate_y4 <- assumptions_m24_treat[[6,7]]
m24_cancer_rate_y5 <- assumptions_m24_treat[[6,8]]

m24_non_malignant_rate_y1 <- 1 - m24_cancer_rate_y1
m24_non_malignant_rate_y2 <- 1 - m24_cancer_rate_y2
m24_non_malignant_rate_y3 <- 1 - m24_cancer_rate_y3
m24_non_malignant_rate_y4 <- 1 - m24_cancer_rate_y4
m24_non_malignant_rate_y5 <- 1 - m24_cancer_rate_y5

# 24 Month Treatment Rates -------------------------------------------------

m24_treatment_surgery_y1 <- assumptions_m24_treat[[7,4]]
m24_treatment_surgery_y2 <- assumptions_m24_treat[[7,5]]
m24_treatment_surgery_y3 <- assumptions_m24_treat[[7,6]]
m24_treatment_surgery_y4 <- assumptions_m24_treat[[7,7]]
m24_treatment_surgery_y5 <- assumptions_m24_treat[[7,8]]

m24_treatment_surg_ac_y1 <- assumptions_m24_treat[[8,4]]
m24_treatment_surg_ac_y2 <- assumptions_m24_treat[[8,5]]
m24_treatment_surg_ac_y3 <- assumptions_m24_treat[[8,6]]
m24_treatment_surg_ac_y4 <- assumptions_m24_treat[[8,7]]
m24_treatment_surg_ac_y5 <- assumptions_m24_treat[[8,8]]

m24_treatment_sabr_y1 <- assumptions_m24_treat[[9,4]]
m24_treatment_sabr_y2 <- assumptions_m24_treat[[9,5]]
m24_treatment_sabr_y3 <- assumptions_m24_treat[[9,6]]
m24_treatment_sabr_y4 <- assumptions_m24_treat[[9,7]]
m24_treatment_sabr_y5 <- assumptions_m24_treat[[9,8]]

m24_treatment_xrt_y1 <- assumptions_m24_treat[[10,4]]
m24_treatment_xrt_y2 <- assumptions_m24_treat[[10,5]]
m24_treatment_xrt_y3 <- assumptions_m24_treat[[10,6]]
m24_treatment_xrt_y4 <- assumptions_m24_treat[[10,7]]
m24_treatment_xrt_y5 <- assumptions_m24_treat[[10,8]]

m24_treatment_chemrad_y1 <- assumptions_m24_treat[[11,4]]
m24_treatment_chemrad_y2 <- assumptions_m24_treat[[11,5]]
m24_treatment_chemrad_y3 <- assumptions_m24_treat[[11,6]]
m24_treatment_chemrad_y4 <- assumptions_m24_treat[[11,7]]
m24_treatment_chemrad_y5 <- assumptions_m24_treat[[11,8]]

m24_treatment_chemo_y1 <- assumptions_m24_treat[[12,4]]
m24_treatment_chemo_y2 <- assumptions_m24_treat[[12,5]]
m24_treatment_chemo_y3 <- assumptions_m24_treat[[12,6]]
m24_treatment_chemo_y4 <- assumptions_m24_treat[[12,7]]
m24_treatment_chemo_y5 <- assumptions_m24_treat[[12,8]]

m24_treatment_nadj_imm_y1 <- assumptions_m24_treat[[13,4]]
m24_treatment_nadj_imm_y2 <- assumptions_m24_treat[[13,5]]
m24_treatment_nadj_imm_y3 <- assumptions_m24_treat[[13,6]]
m24_treatment_nadj_imm_y4 <- assumptions_m24_treat[[13,7]]
m24_treatment_nadj_imm_y5 <- assumptions_m24_treat[[13,8]]

m24_treatment_bsc_y1 <- assumptions_m24_treat[[14,4]]
m24_treatment_bsc_y2 <- assumptions_m24_treat[[14,5]]
m24_treatment_bsc_y3 <- assumptions_m24_treat[[14,6]]
m24_treatment_bsc_y4 <- assumptions_m24_treat[[14,7]]
m24_treatment_bsc_y5 <- assumptions_m24_treat[[14,8]]

# 24 Month Diagnostics Rates -----------------------------------------------

m24_diagnostics_pet_y1 <- assumptions_m24_diag[[1,4]]
m24_diagnostics_pet_y2 <- assumptions_m24_diag[[1,5]]
m24_diagnostics_pet_y3 <- assumptions_m24_diag[[1,6]]
m24_diagnostics_pet_y4 <- assumptions_m24_diag[[1,7]]
m24_diagnostics_pet_y5 <- assumptions_m24_diag[[1,8]]

m24_diagnostics_bronch_y1 <- assumptions_m24_diag[[2,4]]
m24_diagnostics_bronch_y2 <- assumptions_m24_diag[[2,5]]
m24_diagnostics_bronch_y3 <- assumptions_m24_diag[[2,6]]
m24_diagnostics_bronch_y4 <- assumptions_m24_diag[[2,7]]
m24_diagnostics_bronch_y5 <- assumptions_m24_diag[[2,8]]

m24_diagnostics_ebus_y1 <- assumptions_m24_diag[[3,4]]
m24_diagnostics_ebus_y2 <- assumptions_m24_diag[[3,5]]
m24_diagnostics_ebus_y3 <- assumptions_m24_diag[[3,6]]
m24_diagnostics_ebus_y4 <- assumptions_m24_diag[[3,7]]
m24_diagnostics_ebus_y5 <- assumptions_m24_diag[[3,8]]

m24_diagnostics_ct_bio_y1 <- assumptions_m24_diag[[4,4]]
m24_diagnostics_ct_bio_y2 <- assumptions_m24_diag[[4,5]]
m24_diagnostics_ct_bio_y3 <- assumptions_m24_diag[[4,6]]
m24_diagnostics_ct_bio_y4 <- assumptions_m24_diag[[4,7]]
m24_diagnostics_ct_bio_y5 <- assumptions_m24_diag[[4,8]]

m24_diagnostics_nav_bronch_y1 <- assumptions_m24_diag[[5,4]]
m24_diagnostics_nav_bronch_y2 <- assumptions_m24_diag[[5,5]]
m24_diagnostics_nav_bronch_y3 <- assumptions_m24_diag[[5,6]]
m24_diagnostics_nav_bronch_y4 <- assumptions_m24_diag[[5,7]]
m24_diagnostics_nav_bronch_y5 <- assumptions_m24_diag[[5,8]]

m24_diagnostics_lft_y1 <- assumptions_m24_diag[[6,4]]
m24_diagnostics_lft_y2 <- assumptions_m24_diag[[6,5]]
m24_diagnostics_lft_y3 <- assumptions_m24_diag[[6,6]]
m24_diagnostics_lft_y4 <- assumptions_m24_diag[[6,7]]
m24_diagnostics_lft_y5 <- assumptions_m24_diag[[6,8]]
