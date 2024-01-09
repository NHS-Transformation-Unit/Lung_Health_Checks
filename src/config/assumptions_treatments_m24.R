
# 24 Month Cancer Findings -------------------------------------------------

m24_cancer_rate <- 0.508
m24_m48_fu_rate <- 1 - m24_cancer_rate

# 24 Month Treatment Rates -------------------------------------------------

m24_treatment_df <- data.frame(
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
