
# 3 Month Cancer Findings -------------------------------------------------

m3_diagnostic_rate <- 0.508
m3_m12_fu_rate <- 1 - m3_diagnostic_rate

m3_cancer_rate <- 0.8
m3_non_malignant_rate <- 1 - m3_cancer_rate

# 3 Month Treatment Rates -------------------------------------------------

m3_treatment_df <- data.frame(
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
