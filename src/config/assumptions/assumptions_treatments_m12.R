
# 12 Month Cancer Findings -------------------------------------------------

m12_diagnostic_rate <- 0.508
m12_m24_fu_rate <- 1 - m12_diagnostic_rate

m12_cancer_rate <- 0.8
m12_non_malignant_rate <- 1 - m12_cancer_rate

# 12 Month Treatment Rates -------------------------------------------------

m12_treatment_df <- data.frame(
  Modality = c("Surgery",
               "Surgery and Adjuvant Chemotherapy",
               "SABR",
               "XRT",
               "Chemo-Radiation",
               "Chemotherapy",
               "No Treatment or BSC"),
  Rates = c(0.510,
            0.077,
            0.122,
            0.091,
            0.091,
            0.046,
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

# 12 Month Diagnostics Rates -----------------------------------------------

m12_diagnostics_df <- data.frame(
  Modality = c("PET CT",
               "Bronchoscopy",
               "EBUS",
               "CT Guided Biopsy"),
  Rates = c(0.40,
            0.35,
            0.45,
            0.20)
)