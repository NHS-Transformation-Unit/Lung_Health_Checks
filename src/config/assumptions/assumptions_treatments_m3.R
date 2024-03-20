
# 3 Month Cancer Findings -------------------------------------------------

m3_scan_dna_rate <- assumptions_m3_treat[[1,4]]

m3_scan_rebook_rate <- assumptions_m3_treat[[2,4]]

m3_diagnostic_rate <- assumptions_m3_treat[[3,4]]
m3_m12_fu_rate <- 1 - m3_diagnostic_rate

m3_incidental_rate <- assumptions_m3_treat[[4,4]]

m3_cancer_rate <- assumptions_m3_treat[[5,4]]
m3_non_malignant_rate <- 1 - m3_cancer_rate

# 3 Month Treatment Rates -------------------------------------------------

m3_treatment_df <- data.frame(
  Modality = c("Surgery",
               "Surgery and Adjuvant Chemotherapy",
               "SABR",
               "XRT",
               "Chemo-Radiation",
               "Chemotherapy",
               "Neo Immunotherapy",
               "No Treatment or BSC"),
  Rates = c(assumptions_m3_treat[[6,4]],
            assumptions_m3_treat[[7,4]],
            assumptions_m3_treat[[8,4]],
            assumptions_m3_treat[[9,4]],
            assumptions_m3_treat[[10,4]],
            assumptions_m3_treat[[11,4]],
            assumptions_m3_treat[[12,4]],
            NA)
) %>%
  mutate(Rates = case_when(Rates != "No Treatment or BSC" ~ Rates,
                           TRUE ~ 1- sum(Rates, na.rm = TRUE))) %>%
  mutate(Modality = factor(Modality, levels = c("Surgery",
                                                "Surgery and Adjuvant Chemotherapy",
                                                "SABR",
                                                "XRT",
                                                "Chemo-Radiation",
                                                "Chemotherapy",
                                                "Neo Immunotherapy",
                                                "No Treatment or BSC")))

# 3 Month Diagnostics Rates -----------------------------------------------

m3_diagnostics_df <- data.frame(
  Modality = c("PET CT",
               "Bronchoscopy",
               "EBUS",
               "CT Guided Biopsy",
               "Navigational Bronchoscopy",
               "Lung Function Test"),
  Rates = c(assumptions_m3_diag[[1,4]],
            assumptions_m3_diag[[2,4]],
            assumptions_m3_diag[[3,4]],
            assumptions_m3_diag[[4,4]],
            assumptions_m3_diag[[5,4]],
            assumptions_m3_diag[[6,4]])
)
