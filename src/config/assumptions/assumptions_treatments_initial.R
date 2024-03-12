
# Initial Cancer Findings -------------------------------------------------

initial_diagnostic_rate_y1 <- assumptions_initial_treat[[1,4]]
initial_diagnostic_rate_y2 <- assumptions_initial_treat[[1,5]]
initial_diagnostic_rate_y3 <- assumptions_initial_treat[[1,6]]
initial_diagnostic_rate_y4 <- assumptions_initial_treat[[1,7]]
initial_diagnostic_rate_y5 <- assumptions_initial_treat[[1,8]]

initial_incidental_rate_y1 <- assumptions_initial_treat[[2,4]]
initial_incidental_rate_y2 <- assumptions_initial_treat[[2,5]]
initial_incidental_rate_y3 <- assumptions_initial_treat[[2,6]]
initial_incidental_rate_y4 <- assumptions_initial_treat[[2,7]]
initial_incidental_rate_y5 <- assumptions_initial_treat[[2,8]]

initial_m3_fu_rate_y1 <- 1 - initial_diagnostic_rate_y1 - initial_incidental_rate_y1
initial_m3_fu_rate_y2 <- 1 - initial_diagnostic_rate_y2 - initial_incidental_rate_y2
initial_m3_fu_rate_y3 <- 1 - initial_diagnostic_rate_y3 - initial_incidental_rate_y3
initial_m3_fu_rate_y4 <- 1 - initial_diagnostic_rate_y4 - initial_incidental_rate_y4
initial_m3_fu_rate_y5 <- 1 - initial_diagnostic_rate_y5 - initial_incidental_rate_y5

initial_cancer_rate_y1 <- assumptions_initial_treat[[3,4]]
initial_cancer_rate_y2 <- assumptions_initial_treat[[3,5]]
initial_cancer_rate_y3 <- assumptions_initial_treat[[3,6]]
initial_cancer_rate_y4 <- assumptions_initial_treat[[3,7]]
initial_cancer_rate_y5 <- assumptions_initial_treat[[3,8]]

initial_non_malignant_rate_y1 <- 1 - initial_cancer_rate_y1
initial_non_malignant_rate_y2 <- 1 - initial_cancer_rate_y2
initial_non_malignant_rate_y3 <- 1 - initial_cancer_rate_y3
initial_non_malignant_rate_y4 <- 1 - initial_cancer_rate_y4
initial_non_malignant_rate_y5 <- 1 - initial_cancer_rate_y5

# Initial Treatment Rates -------------------------------------------------

initial_treatment_surgery_y1 <- assumptions_initial_treat[[4,4]]
initial_treatment_surgery_y2 <- assumptions_initial_treat[[4,5]]
initial_treatment_surgery_y3 <- assumptions_initial_treat[[4,6]]
initial_treatment_surgery_y4 <- assumptions_initial_treat[[4,7]]
initial_treatment_surgery_y5 <- assumptions_initial_treat[[4,8]]

initial_treatment_surg_ac_y1 <- assumptions_initial_treat[[5,4]]
initial_treatment_surg_ac_y2 <- assumptions_initial_treat[[5,5]]
initial_treatment_surg_ac_y3 <- assumptions_initial_treat[[5,6]]
initial_treatment_surg_ac_y4 <- assumptions_initial_treat[[5,7]]
initial_treatment_surg_ac_y5 <- assumptions_initial_treat[[5,8]]

initial_treatment_sabr_y1 <- assumptions_initial_treat[[6,4]]
initial_treatment_sabr_y2 <- assumptions_initial_treat[[6,5]]
initial_treatment_sabr_y3 <- assumptions_initial_treat[[6,6]]
initial_treatment_sabr_y4 <- assumptions_initial_treat[[6,7]]
initial_treatment_sabr_y5 <- assumptions_initial_treat[[6,8]]

initial_treatment_xrt_y1 <- assumptions_initial_treat[[7,4]]
initial_treatment_xrt_y2 <- assumptions_initial_treat[[7,5]]
initial_treatment_xrt_y3 <- assumptions_initial_treat[[7,6]]
initial_treatment_xrt_y4 <- assumptions_initial_treat[[7,7]]
initial_treatment_xrt_y5 <- assumptions_initial_treat[[7,8]]

initial_treatment_chemrad_y1 <- assumptions_initial_treat[[8,4]]
initial_treatment_chemrad_y2 <- assumptions_initial_treat[[8,5]]
initial_treatment_chemrad_y3 <- assumptions_initial_treat[[8,6]]
initial_treatment_chemrad_y4 <- assumptions_initial_treat[[8,7]]
initial_treatment_chemrad_y5 <- assumptions_initial_treat[[8,8]]

initial_treatment_chemo_y1 <- assumptions_initial_treat[[9,4]]
initial_treatment_chemo_y2 <- assumptions_initial_treat[[9,5]]
initial_treatment_chemo_y3 <- assumptions_initial_treat[[9,6]]
initial_treatment_chemo_y4 <- assumptions_initial_treat[[9,7]]
initial_treatment_chemo_y5 <- assumptions_initial_treat[[9,8]]

initial_treatment_nadj_imm_y1 <- assumptions_initial_treat[[10,4]]
initial_treatment_nadj_imm_y2 <- assumptions_initial_treat[[10,5]]
initial_treatment_nadj_imm_y3 <- assumptions_initial_treat[[10,6]]
initial_treatment_nadj_imm_y4 <- assumptions_initial_treat[[10,7]]
initial_treatment_nadj_imm_y5 <- assumptions_initial_treat[[10,8]]

initial_treatment_bsc_y1 <- assumptions_initial_treat[[11,4]]
initial_treatment_bsc_y2 <- assumptions_initial_treat[[11,5]]
initial_treatment_bsc_y3 <- assumptions_initial_treat[[11,6]]
initial_treatment_bsc_y4 <- assumptions_initial_treat[[11,7]]
initial_treatment_bsc_y5 <- assumptions_initial_treat[[11,8]]

# Initial Diagnostics Rates -----------------------------------------------

initial_diagnostics_pet_y1 <- assumptions_initial_diag[[1,4]]
initial_diagnostics_pet_y2 <- assumptions_initial_diag[[1,5]]
initial_diagnostics_pet_y3 <- assumptions_initial_diag[[1,6]]
initial_diagnostics_pet_y4 <- assumptions_initial_diag[[1,7]]
initial_diagnostics_pet_y5 <- assumptions_initial_diag[[1,8]]

initial_diagnostics_bronch_y1 <- assumptions_initial_diag[[2,4]]
initial_diagnostics_bronch_y2 <- assumptions_initial_diag[[2,5]]
initial_diagnostics_bronch_y3 <- assumptions_initial_diag[[2,6]]
initial_diagnostics_bronch_y4 <- assumptions_initial_diag[[2,7]]
initial_diagnostics_bronch_y5 <- assumptions_initial_diag[[2,8]]

initial_diagnostics_pet_y1 <- assumptions_initial_diag[[3,4]]
initial_diagnostics_pet_y2 <- assumptions_initial_diag[[3,5]]
initial_diagnostics_pet_y3 <- assumptions_initial_diag[[3,6]]
initial_diagnostics_pet_y4 <- assumptions_initial_diag[[3,7]]
initial_diagnostics_pet_y5 <- assumptions_initial_diag[[3,8]]

initial_diagnostics_pet_y1 <- assumptions_initial_diag[[4,4]]
initial_diagnostics_pet_y2 <- assumptions_initial_diag[[4,5]]
initial_diagnostics_pet_y3 <- assumptions_initial_diag[[4,6]]
initial_diagnostics_pet_y4 <- assumptions_initial_diag[[4,7]]
initial_diagnostics_pet_y5 <- assumptions_initial_diag[[4,8]]

initial_diagnostics_pet_y1 <- assumptions_initial_diag[[5,4]]
initial_diagnostics_pet_y2 <- assumptions_initial_diag[[5,5]]
initial_diagnostics_pet_y3 <- assumptions_initial_diag[[5,6]]
initial_diagnostics_pet_y4 <- assumptions_initial_diag[[5,7]]
initial_diagnostics_pet_y5 <- assumptions_initial_diag[[5,8]]
