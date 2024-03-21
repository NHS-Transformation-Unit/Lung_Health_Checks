
# 12 Month Cancer Findings -------------------------------------------------

m12_scan_dna_rate <- assumptions_m12_treat[[1,4]]

m12_scan_rebook_rate <- assumptions_m12_treat[[2,4]]

m12_diagnostic_rate <- assumptions_m12_treat[[3,4]]
m12_m24_fu_rate <- 1 - m12_diagnostic_rate

m12_incidental_rate <- assumptions_m12_treat[[4,4]]

m12_cancer_rate <- assumptions_m12_treat[[5,4]]
m12_non_malignant_rate <- 1 - m12_cancer_rate

# 12 Month Treatment Rates -------------------------------------------------

m12_treatment_df <- data.frame(
  Modality = c("Surgery",
               "Surgery and Adjuvant Chemotherapy",
               "SABR",
               "XRT",
               "Chemo-Radiation",
               "Chemotherapy",
               "Neo Immunotherapy",
               "No Treatment or BSC"),
  Rates = c(assumptions_m12_treat[[6,4]],
            assumptions_m12_treat[[7,4]],
            assumptions_m12_treat[[8,4]],
            assumptions_m12_treat[[9,4]],
            assumptions_m12_treat[[10,4]],
            assumptions_m12_treat[[11,4]],
            assumptions_m12_treat[[12,4]],
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

# 12 Month Diagnostics Rates -----------------------------------------------

m12_diagnostics_df <- data.frame(
  Modality = c("PET CT",
               "Bronchoscopy",
               "EBUS",
               "CT Guided Biopsy",
               "Navigational Bronchoscopy",
               "Lung Function Test"),
  Rates = c(assumptions_m12_diag[[1,4]],
            assumptions_m12_diag[[2,4]],
            assumptions_m12_diag[[3,4]],
            assumptions_m12_diag[[4,4]],
            assumptions_m12_diag[[5,4]],
            assumptions_m12_diag[[6,4]])
)
