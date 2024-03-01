
# Initial Cancer Findings -------------------------------------------------

initial_diagnostic_rate <- assumptions_initial_treat[[1,4]]
initial_m3_fu_rate <- 1 - initial_diagnostic_rate

initial_cancer_rate <- assumptions_initial_treat[[2,4]]
initial_non_malignant_rate <- 1 - initial_cancer_rate

# Initial Treatment Rates -------------------------------------------------

initial_treatment_df <- data.frame(
  Modality = c("Surgery",
               "Surgery and Adjuvant Chemotherapy",
               "SABR",
               "XRT",
               "Chemo-Radiation",
               "Chemotherapy",
               "No Treatment or BSC"),
  Rates = c(assumptions_initial_treat[[3,4]],
            assumptions_initial_treat[[4,4]],
            assumptions_initial_treat[[5,4]],
            assumptions_initial_treat[[6,4]],
            assumptions_initial_treat[[7,4]],
            assumptions_initial_treat[[8,4]],
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

# Initial Diagnostics Rates -----------------------------------------------

initial_diagnostics_df <- data.frame(
  Modality = c("PET CT",
               "Bronchoscopy",
               "EBUS",
               "CT Guided Biopsy"),
  Rates = c(assumptions_initial_diag[[1,4]],
            assumptions_initial_diag[[2,4]],
            assumptions_initial_diag[[3,4]],
            assumptions_initial_diag[[4,4]])
)
