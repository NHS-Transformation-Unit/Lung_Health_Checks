initial_treat_groups <- function(input_df, diagnostic_rate, incidental_rate, follow_up_rate, 
                                 cancer_rate){
  
  ### Simulate the initial treatment outcomes
  initial_treat_outcome_df <- input_df %>%
    mutate(init_treat_outcome_prob = runif(n()),
           init_treat_outcome = case_when(init_treat_outcome_prob < diagnostic_rate ~ "Diagnostics",
                                          init_treat_outcome_prob < diagnostic_rate + incidental_rate ~ "Incidental",
                                          TRUE ~ "3M_FU"))
  
  ### Aggregate initial outcomes
  initial_treat_outcome_agg_df <- initial_treat_outcome_df %>%
    group_by(Trial, init_treat_outcome) %>%
    summarise("Total" = n())
  
  ### Additional Diagnostics Output
  initial_treat_diags_df <- initial_treat_outcome_df %>%
    filter(init_treat_outcome == "Diagnostics")
  
  ### 3-month follow-up Output
  initial_treat_3m_fu_df <- initial_treat_outcome_df %>%
    filter(init_treat_outcome == "3M_FU")
  
  ### Simulate cancer diagnosis
  initial_treat_diags_outcome_df <- initial_treat_diags_df %>%
    mutate(cancer_outcome_prob = runif(n()),
           cancer_outcome = case_when(cancer_outcome_prob < cancer_rate ~ "Cancer",
                                      TRUE ~ "Non-Malignant"))
  
  ### Aggregate cancer diagnosis
  initial_treat_diags_outcome_agg_df <- initial_treat_diags_outcome_df %>%
    group_by(Trial, cancer_outcome) %>%
    summarise("Total" = n())
  
  ### Output Cancer Dataframe
  initial_treat_cancer_output_df <- initial_treat_diags_outcome_df %>%
    filter(cancer_outcome == "Cancer")
  
  return(list(initial_treat_outcome_agg_df, initial_treat_diags_df, initial_treat_3m_fu_df, initial_treat_diags_outcome_agg_df, initial_treat_cancer_output_df))
  
}

initial_treatment_modalities <- function(input_df, surgery_rate, surg_ac_rate, sabr_rate, xrt_rate,
                                         chemrad_rate, chemo_rate, nadj_imm_rate){
  
  ### Simulate treatment modalities
  initial_treat_modalities_df <- input_df %>%
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
  initial_treat_modalities_agg_df <- initial_treat_modalities_df %>%
    group_by(Trial, modality) %>%
    summarise("Total" = n())
  
}
