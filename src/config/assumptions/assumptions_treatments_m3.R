
# Month 3 Scan DNA Rates --------------------------------------------------

m3_scan_dna_rate_y1 <- assumptions_m3_treat[[1,4]]
m3_scan_dna_rate_y2 <- assumptions_m3_treat[[1,5]]
m3_scan_dna_rate_y3 <- assumptions_m3_treat[[1,6]]
m3_scan_dna_rate_y4 <- assumptions_m3_treat[[1,7]]
m3_scan_dna_rate_y5 <- assumptions_m3_treat[[1,8]]

# Month 3 Scan Rebook Rates -----------------------------------------------

m3_scan_rebook_rate_y1 <- assumptions_m3_treat[[2,4]]
m3_scan_rebook_rate_y2 <- assumptions_m3_treat[[2,5]]
m3_scan_rebook_rate_y3 <- assumptions_m3_treat[[2,6]]
m3_scan_rebook_rate_y4 <- assumptions_m3_treat[[2,7]]
m3_scan_rebook_rate_y5 <- assumptions_m3_treat[[2,8]]

# 3 Month Cancer Findings -------------------------------------------------

m3_diagnostic_rate_y1 <- assumptions_m3_treat[[3,4]]
m3_diagnostic_rate_y2 <- assumptions_m3_treat[[3,5]]
m3_diagnostic_rate_y3 <- assumptions_m3_treat[[3,6]]
m3_diagnostic_rate_y4 <- assumptions_m3_treat[[3,7]]
m3_diagnostic_rate_y5 <- assumptions_m3_treat[[3,8]]

m3_incidental_rate_y1 <- assumptions_m3_treat[[4,4]]
m3_incidental_rate_y2 <- assumptions_m3_treat[[4,5]]
m3_incidental_rate_y3 <- assumptions_m3_treat[[4,6]]
m3_incidental_rate_y4 <- assumptions_m3_treat[[4,7]]
m3_incidental_rate_y5 <- assumptions_m3_treat[[4,8]]

m3_m24_fu_rate_y1 <- assumptions_m3_treat[[5,4]]
m3_m24_fu_rate_y2 <- assumptions_m3_treat[[5,5]]
m3_m24_fu_rate_y3 <- assumptions_m3_treat[[5,6]]
m3_m24_fu_rate_y4 <- assumptions_m3_treat[[5,7]]
m3_m24_fu_rate_y5 <- assumptions_m3_treat[[5,8]]

m3_m12_fu_rate_y1 <- 1 - m3_diagnostic_rate_y1 - m3_incidental_rate_y1 - m3_m24_fu_rate_y1
m3_m12_fu_rate_y2 <- 1 - m3_diagnostic_rate_y2 - m3_incidental_rate_y2 - m3_m24_fu_rate_y2
m3_m12_fu_rate_y3 <- 1 - m3_diagnostic_rate_y3 - m3_incidental_rate_y3 - m3_m24_fu_rate_y3
m3_m12_fu_rate_y4 <- 1 - m3_diagnostic_rate_y4 - m3_incidental_rate_y4 - m3_m24_fu_rate_y4
m3_m12_fu_rate_y5 <- 1 - m3_diagnostic_rate_y5 - m3_incidental_rate_y5 - m3_m24_fu_rate_y5

m3_cancer_rate_y1 <- assumptions_m3_treat[[6,4]]
m3_cancer_rate_y2 <- assumptions_m3_treat[[6,5]]
m3_cancer_rate_y3 <- assumptions_m3_treat[[6,6]]
m3_cancer_rate_y4 <- assumptions_m3_treat[[6,7]]
m3_cancer_rate_y5 <- assumptions_m3_treat[[6,8]]

m3_non_malignant_rate_y1 <- 1 - m3_cancer_rate_y1
m3_non_malignant_rate_y2 <- 1 - m3_cancer_rate_y2
m3_non_malignant_rate_y3 <- 1 - m3_cancer_rate_y3
m3_non_malignant_rate_y4 <- 1 - m3_cancer_rate_y4
m3_non_malignant_rate_y5 <- 1 - m3_cancer_rate_y5


# 3 Month Treatment Rates -------------------------------------------------

m3_treatment_surgery_y1 <- assumptions_m3_treat[[7,4]]
m3_treatment_surgery_y2 <- assumptions_m3_treat[[7,5]]
m3_treatment_surgery_y3 <- assumptions_m3_treat[[7,6]]
m3_treatment_surgery_y4 <- assumptions_m3_treat[[7,7]]
m3_treatment_surgery_y5 <- assumptions_m3_treat[[7,8]]

m3_treatment_surg_ac_y1 <- assumptions_m3_treat[[8,4]]
m3_treatment_surg_ac_y2 <- assumptions_m3_treat[[8,5]]
m3_treatment_surg_ac_y3 <- assumptions_m3_treat[[8,6]]
m3_treatment_surg_ac_y4 <- assumptions_m3_treat[[8,7]]
m3_treatment_surg_ac_y5 <- assumptions_m3_treat[[8,8]]

m3_treatment_sabr_y1 <- assumptions_m3_treat[[9,4]]
m3_treatment_sabr_y2 <- assumptions_m3_treat[[9,5]]
m3_treatment_sabr_y3 <- assumptions_m3_treat[[9,6]]
m3_treatment_sabr_y4 <- assumptions_m3_treat[[9,7]]
m3_treatment_sabr_y5 <- assumptions_m3_treat[[9,8]]

m3_treatment_xrt_y1 <- assumptions_m3_treat[[10,4]]
m3_treatment_xrt_y2 <- assumptions_m3_treat[[10,5]]
m3_treatment_xrt_y3 <- assumptions_m3_treat[[10,6]]
m3_treatment_xrt_y4 <- assumptions_m3_treat[[10,7]]
m3_treatment_xrt_y5 <- assumptions_m3_treat[[10,8]]

m3_treatment_chemrad_y1 <- assumptions_m3_treat[[11,4]]
m3_treatment_chemrad_y2 <- assumptions_m3_treat[[11,5]]
m3_treatment_chemrad_y3 <- assumptions_m3_treat[[11,6]]
m3_treatment_chemrad_y4 <- assumptions_m3_treat[[11,7]]
m3_treatment_chemrad_y5 <- assumptions_m3_treat[[11,8]]

m3_treatment_chemo_y1 <- assumptions_m3_treat[[12,4]]
m3_treatment_chemo_y2 <- assumptions_m3_treat[[12,5]]
m3_treatment_chemo_y3 <- assumptions_m3_treat[[12,6]]
m3_treatment_chemo_y4 <- assumptions_m3_treat[[12,7]]
m3_treatment_chemo_y5 <- assumptions_m3_treat[[12,8]]

m3_treatment_nadj_imm_y1 <- assumptions_m3_treat[[13,4]]
m3_treatment_nadj_imm_y2 <- assumptions_m3_treat[[13,5]]
m3_treatment_nadj_imm_y3 <- assumptions_m3_treat[[13,6]]
m3_treatment_nadj_imm_y4 <- assumptions_m3_treat[[13,7]]
m3_treatment_nadj_imm_y5 <- assumptions_m3_treat[[13,8]]

m3_treatment_bsc_y1 <- assumptions_m3_treat[[14,4]]
m3_treatment_bsc_y2 <- assumptions_m3_treat[[14,5]]
m3_treatment_bsc_y3 <- assumptions_m3_treat[[14,6]]
m3_treatment_bsc_y4 <- assumptions_m3_treat[[14,7]]
m3_treatment_bsc_y5 <- assumptions_m3_treat[[14,8]]

# 3 Month Diagnostics Rates -----------------------------------------------

m3_diagnostics_pet_y1 <- assumptions_m3_diag[[1,4]]
m3_diagnostics_pet_y2 <- assumptions_m3_diag[[1,5]]
m3_diagnostics_pet_y3 <- assumptions_m3_diag[[1,6]]
m3_diagnostics_pet_y4 <- assumptions_m3_diag[[1,7]]
m3_diagnostics_pet_y5 <- assumptions_m3_diag[[1,8]]

m3_diagnostics_bronch_y1 <- assumptions_m3_diag[[2,4]]
m3_diagnostics_bronch_y2 <- assumptions_m3_diag[[2,5]]
m3_diagnostics_bronch_y3 <- assumptions_m3_diag[[2,6]]
m3_diagnostics_bronch_y4 <- assumptions_m3_diag[[2,7]]
m3_diagnostics_bronch_y5 <- assumptions_m3_diag[[2,8]]

m3_diagnostics_ebus_y1 <- assumptions_m3_diag[[3,4]]
m3_diagnostics_ebus_y2 <- assumptions_m3_diag[[3,5]]
m3_diagnostics_ebus_y3 <- assumptions_m3_diag[[3,6]]
m3_diagnostics_ebus_y4 <- assumptions_m3_diag[[3,7]]
m3_diagnostics_ebus_y5 <- assumptions_m3_diag[[3,8]]

m3_diagnostics_ct_bio_y1 <- assumptions_m3_diag[[4,4]]
m3_diagnostics_ct_bio_y2 <- assumptions_m3_diag[[4,5]]
m3_diagnostics_ct_bio_y3 <- assumptions_m3_diag[[4,6]]
m3_diagnostics_ct_bio_y4 <- assumptions_m3_diag[[4,7]]
m3_diagnostics_ct_bio_y5 <- assumptions_m3_diag[[4,8]]

m3_diagnostics_nav_bronch_y1 <- assumptions_m3_diag[[5,4]]
m3_diagnostics_nav_bronch_y2 <- assumptions_m3_diag[[5,5]]
m3_diagnostics_nav_bronch_y3 <- assumptions_m3_diag[[5,6]]
m3_diagnostics_nav_bronch_y4 <- assumptions_m3_diag[[5,7]]
m3_diagnostics_nav_bronch_y5 <- assumptions_m3_diag[[5,8]]

m3_diagnostics_lft_y1 <- assumptions_m3_diag[[6,4]]
m3_diagnostics_lft_y2 <- assumptions_m3_diag[[6,5]]
m3_diagnostics_lft_y3 <- assumptions_m3_diag[[6,6]]
m3_diagnostics_lft_y4 <- assumptions_m3_diag[[6,7]]
m3_diagnostics_lft_y5 <- assumptions_m3_diag[[6,8]]


# 3 Month Incidental Rates ------------------------------------------------

m3_inc_cc_y1 <- assumptions_m3_inc[[1,4]]
m3_inc_cc_y2 <- assumptions_m3_inc[[1,5]]
m3_inc_cc_y3 <- assumptions_m3_inc[[1,6]]
m3_inc_cc_y4 <- assumptions_m3_inc[[1,7]]
m3_inc_cc_y5 <- assumptions_m3_inc[[1,8]]

m3_inc_emp_y1 <- assumptions_m3_inc[[2,4]]
m3_inc_emp_y2 <- assumptions_m3_inc[[2,5]]
m3_inc_emp_y3 <- assumptions_m3_inc[[2,6]]
m3_inc_emp_y4 <- assumptions_m3_inc[[2,7]]
m3_inc_emp_y5 <- assumptions_m3_inc[[2,8]]

m3_inc_ila_y1 <- assumptions_m3_inc[[3,4]]
m3_inc_ila_y2 <- assumptions_m3_inc[[3,5]]
m3_inc_ila_y3 <- assumptions_m3_inc[[3,6]]
m3_inc_ila_y4 <- assumptions_m3_inc[[3,7]]
m3_inc_ila_y5 <- assumptions_m3_inc[[3,8]]

m3_inc_meda_y1 <- assumptions_m3_inc[[4,4]]
m3_inc_meda_y2 <- assumptions_m3_inc[[4,5]]
m3_inc_meda_y3 <- assumptions_m3_inc[[4,6]]
m3_inc_meda_y4 <- assumptions_m3_inc[[4,7]]
m3_inc_meda_y5 <- assumptions_m3_inc[[4,8]]

m3_inc_avc_y1 <- assumptions_m3_inc[[5,4]]
m3_inc_avc_y2 <- assumptions_m3_inc[[5,5]]
m3_inc_avc_y3 <- assumptions_m3_inc[[5,6]]
m3_inc_avc_y4 <- assumptions_m3_inc[[5,7]]
m3_inc_avc_y5 <- assumptions_m3_inc[[5,8]]

m3_inc_bro_y1 <- assumptions_m3_inc[[6,4]]
m3_inc_bro_y2 <- assumptions_m3_inc[[6,5]]
m3_inc_bro_y3 <- assumptions_m3_inc[[6,6]]
m3_inc_bro_y4 <- assumptions_m3_inc[[6,7]]
m3_inc_bro_y5 <- assumptions_m3_inc[[6,8]]

m3_inc_rbr_y1 <- assumptions_m3_inc[[7,4]]
m3_inc_rbr_y2 <- assumptions_m3_inc[[7,5]]
m3_inc_rbr_y3 <- assumptions_m3_inc[[7,6]]
m3_inc_rbr_y4 <- assumptions_m3_inc[[7,7]]
m3_inc_rbr_y5 <- assumptions_m3_inc[[7,8]]

m3_inc_taa_y1 <- assumptions_m3_inc[[8,4]]
m3_inc_taa_y2 <- assumptions_m3_inc[[8,5]]
m3_inc_taa_y3 <- assumptions_m3_inc[[8,6]]
m3_inc_taa_y4 <- assumptions_m3_inc[[8,7]]
m3_inc_taa_y5 <- assumptions_m3_inc[[8,8]]

m3_inc_ost_y1 <- assumptions_m3_inc[[9,4]]
m3_inc_ost_y2 <- assumptions_m3_inc[[9,5]]
m3_inc_ost_y3 <- assumptions_m3_inc[[9,6]]
m3_inc_ost_y4 <- assumptions_m3_inc[[9,7]]
m3_inc_ost_y5 <- assumptions_m3_inc[[9,8]]

m3_inc_lsl_y1 <- assumptions_m3_inc[[10,4]]
m3_inc_lsl_y2 <- assumptions_m3_inc[[10,5]]
m3_inc_lsl_y3 <- assumptions_m3_inc[[10,6]]
m3_inc_lsl_y4 <- assumptions_m3_inc[[10,7]]
m3_inc_lsl_y5 <- assumptions_m3_inc[[10,8]]

m3_inc_ren_y1 <- assumptions_m3_inc[[11,4]]
m3_inc_ren_y2 <- assumptions_m3_inc[[11,5]]
m3_inc_ren_y3 <- assumptions_m3_inc[[11,6]]
m3_inc_ren_y4 <- assumptions_m3_inc[[11,7]]
m3_inc_ren_y5 <- assumptions_m3_inc[[11,8]]

m3_inc_adr_y1 <- assumptions_m3_inc[[12,4]]
m3_inc_adr_y2 <- assumptions_m3_inc[[12,5]]
m3_inc_adr_y3 <- assumptions_m3_inc[[12,6]]
m3_inc_adr_y4 <- assumptions_m3_inc[[12,7]]
m3_inc_adr_y5 <- assumptions_m3_inc[[12,8]]

m3_inc_oca_y1 <- assumptions_m3_inc[[13,4]]
m3_inc_oca_y2 <- assumptions_m3_inc[[13,5]]
m3_inc_oca_y3 <- assumptions_m3_inc[[13,6]]
m3_inc_oca_y4 <- assumptions_m3_inc[[13,7]]
m3_inc_oca_y5 <- assumptions_m3_inc[[13,8]]

m3_inc_ple_y1 <- assumptions_m3_inc[[14,4]]
m3_inc_ple_y2 <- assumptions_m3_inc[[14,5]]
m3_inc_ple_y3 <- assumptions_m3_inc[[14,6]]
m3_inc_ple_y4 <- assumptions_m3_inc[[14,7]]
m3_inc_ple_y5 <- assumptions_m3_inc[[14,8]]

m3_inc_sbl_y1 <- assumptions_m3_inc[[15,4]]
m3_inc_sbl_y2 <- assumptions_m3_inc[[15,5]]
m3_inc_sbl_y3 <- assumptions_m3_inc[[15,6]]
m3_inc_sbl_y4 <- assumptions_m3_inc[[15,7]]
m3_inc_sbl_y5 <- assumptions_m3_inc[[15,8]]

m3_inc_con_y1 <- assumptions_m3_inc[[16,4]]
m3_inc_con_y2 <- assumptions_m3_inc[[16,5]]
m3_inc_con_y3 <- assumptions_m3_inc[[16,6]]
m3_inc_con_y4 <- assumptions_m3_inc[[16,7]]
m3_inc_con_y5 <- assumptions_m3_inc[[16,8]]

m3_inc_bon_y1 <- assumptions_m3_inc[[17,4]]
m3_inc_bon_y2 <- assumptions_m3_inc[[17,5]]
m3_inc_bon_y3 <- assumptions_m3_inc[[17,6]]
m3_inc_bon_y4 <- assumptions_m3_inc[[17,7]]
m3_inc_bon_y5 <- assumptions_m3_inc[[17,8]]

m3_inc_fra_y1 <- assumptions_m3_inc[[18,4]]
m3_inc_fra_y2 <- assumptions_m3_inc[[18,5]]
m3_inc_fra_y3 <- assumptions_m3_inc[[18,6]]
m3_inc_fra_y4 <- assumptions_m3_inc[[18,7]]
m3_inc_fra_y5 <- assumptions_m3_inc[[18,8]]

m3_inc_thy_y1 <- assumptions_m3_inc[[19,4]]
m3_inc_thy_y2 <- assumptions_m3_inc[[19,5]]
m3_inc_thy_y3 <- assumptions_m3_inc[[19,6]]
m3_inc_thy_y4 <- assumptions_m3_inc[[19,7]]
m3_inc_thy_y5 <- assumptions_m3_inc[[19,8]]

m3_inc_aaa_y1 <- assumptions_m3_inc[[20,4]]
m3_inc_aaa_y2 <- assumptions_m3_inc[[20,5]]
m3_inc_aaa_y3 <- assumptions_m3_inc[[20,6]]
m3_inc_aaa_y4 <- assumptions_m3_inc[[20,7]]
m3_inc_aaa_y5 <- assumptions_m3_inc[[20,8]]

m3_inc_tub_y1 <- assumptions_m3_inc[[21,4]]
m3_inc_tub_y2 <- assumptions_m3_inc[[21,5]]
m3_inc_tub_y3 <- assumptions_m3_inc[[21,6]]
m3_inc_tub_y4 <- assumptions_m3_inc[[21,7]]
m3_inc_tub_y5 <- assumptions_m3_inc[[21,8]]
