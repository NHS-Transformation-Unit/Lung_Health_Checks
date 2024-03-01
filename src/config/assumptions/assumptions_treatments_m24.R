
# 24 Month Cancer Findings -------------------------------------------------

m24_diagnostic_rate <- assumptions_m24_treat[[1,4]]
m24_m48_fu_rate <- 1 - m24_diagnostic_rate

m24_cancer_rate <- assumptions_m24_treat[[2,4]]
m24_non_malignant_rate <- 1 - m24_cancer_rate

# 24 Month Treatment Rates -------------------------------------------------

m24_treatment_df <- data.frame(
  Modality = c("Surgery",
               "Surgery and Adjuvant Chemotherapy",
               "SABR",
               "XRT",
               "Chemo-Radiation",
               "Chemotherapy",
               "No Treatment or BSC"),
  Rates = c(assumptions_m24_treat[[3,4]],
            assumptions_m24_treat[[4,4]],
            assumptions_m24_treat[[5,4]],
            assumptions_m24_treat[[6,4]],
            assumptions_m24_treat[[7,4]],
            assumptions_m24_treat[[8,4]],
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
                                                "No Treatment or BSC")))

# 24 Month Diagnostics Rates -----------------------------------------------

m24_diagnostics_df <- data.frame(
  Modality = c("PET CT",
               "Bronchoscopy",
               "EBUS",
               "CT Guided Biopsy"),
  Rates = c(assumptions_m24_diag[[1,4]],
            assumptions_m24_diag[[2,4]],
            assumptions_m24_diag[[3,4]],
            assumptions_m24_diag[[4,4]])
)
