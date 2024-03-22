m3_treat_groups <- function(input_df, dna_rate, rebook_rate, diagnostic_rate, incidental_rate, follow_up_rate, 
                                 cancer_rate){
  
  ### Simulate DNA and Rebooking for non-excluded patients
  m3_dna_df <- input_df %>%
    mutate(m3_dna_prob = runif(n()),
           m3_dna = case_when(m3_dna_prob < dna_rate ~ 1,
                              TRUE ~ 0),
           m3_rebook_prob = runif(n()),
           m3_rebook = case_when(m3_dna == 0 ~ "Attended",
                                 m3_rebook_prob < rebook_rate ~ "Rebook",
                                 TRUE ~ "Opt-out"))
  
  m3_dna_opt_out <- m3_dna_df %>%
    filter(m3_rebook == "Opt-out")
  
  ### Aggregate Attendance, DNA and Rebooked
  m3_dna_agg_df <- m3_dna_df %>%
    group_by(Trial, m3_rebook) %>%
    summarise("Total" = n())
  
  ### Simulate the m3 treatment outcomes
  m3_treat_outcome_df <- m3_dna_df %>%
    filter(m3_rebook != "Opt-out") %>%
    mutate(m3_treat_outcome_prob = runif(n()),
           m3_treat_outcome = case_when(m3_treat_outcome_prob < diagnostic_rate ~ "Diagnostics",
                                          m3_treat_outcome_prob < diagnostic_rate + incidental_rate ~ "Incidental",
                                          TRUE ~ "12M_FU"))
  
  ### Aggregate m3 outcomes
  m3_treat_outcome_agg_df <- m3_treat_outcome_df %>%
    group_by(Trial, m3_treat_outcome) %>%
    summarise("Total" = n())
  
  ### Additional Diagnostics Output
  m3_treat_diags_df <- m3_treat_outcome_df %>%
    filter(m3_treat_outcome == "Diagnostics")
  
  ### 12-month follow-up Output
  m3_treat_12m_fu_df <- m3_treat_outcome_df %>%
    filter(m3_treat_outcome == "12M_FU")
  
  ### Simulate cancer diagnosis
  m3_treat_diags_outcome_df <- m3_treat_diags_df %>%
    mutate(cancer_outcome_prob = runif(n()),
           cancer_outcome = case_when(cancer_outcome_prob < cancer_rate ~ "Cancer",
                                      TRUE ~ "Non-Malignant"))
  
  ### Aggregate cancer diagnosis
  m3_treat_diags_outcome_agg_df <- m3_treat_diags_outcome_df %>%
    group_by(Trial, cancer_outcome) %>%
    summarise("Total" = n())
  
  ### Output Cancer Dataframe
  m3_treat_cancer_output_df <- m3_treat_diags_outcome_df %>%
    filter(cancer_outcome == "Cancer")
  
  return(list(m3_dna_agg_df, m3_treat_outcome_agg_df, m3_treat_diags_df, m3_treat_12m_fu_df, m3_treat_diags_outcome_agg_df, m3_treat_cancer_output_df, m3_dna_opt_out))
  
}

m3_treatment_modalities <- function(input_df, surgery_rate, surg_ac_rate, sabr_rate, xrt_rate,
                                         chemrad_rate, chemo_rate, nadj_imm_rate){
  
  ### Simulate treatment modalities
  m3_treat_modalities_df <- input_df %>%
    mutate(modality_prob = runif(n()),
           modality = case_when(modality_prob < surgery_rate ~ "Surgery",
                                modality_prob < surgery_rate + surg_ac_rate ~ "Surgery_Adjuvant_Chemotherapy",
                                modality_prob < surgery_rate + surg_ac_rate + sabr_rate ~ "SABR",
                                modality_prob < surgery_rate + surg_ac_rate + sabr_rate + xrt_rate ~ "XRT",
                                modality_prob < surgery_rate + surg_ac_rate + sabr_rate + xrt_rate + chemrad_rate ~ "Chemoradiotherapy",
                                modality_prob < surgery_rate + surg_ac_rate + sabr_rate + xrt_rate + chemrad_rate + chemo_rate ~ "Chemotherapy",
                                modality_prob < surgery_rate + surg_ac_rate + sabr_rate + xrt_rate + chemrad_rate + chemo_rate + nadj_imm_rate ~ "Neoadjuvant_Immunotherapy",
                                TRUE ~ "Best_Supportive_Care"))
  
  ### Aggregate treatment modalities
  m3_treat_modalities_agg_df <- m3_treat_modalities_df %>%
    group_by(Trial, modality) %>%
    summarise("Total" = n())
  
}
