ct <- function(input_df, exclusion_rate, dna_rate, dna_rebook_rate, positive, negative_fu){
  
  ### Simulate patients to be excluded from CT scanning
  ct_exclusion_df <- input_df %>%
    mutate(ct_exclusion_prob = runif(n()),
           ct_exclusion = case_when(ct_exclusion_prob < exclusion_rate ~ 1,
                                    TRUE ~ 0))
  
  ### Aggregate Exclusions
  ct_exclusion_agg_df <- ct_exclusion_df %>%
    filter(ct_exclusion == 1) %>%
    group_by(Trial) %>%
    summarise("Total" = n())
  
  ### Simulate DNA and Rebooking for non-excluded patients
  ct_dna_df <- ct_exclusion_df %>%
    filter(ct_exclusion == 0) %>%
    mutate(ct_dna_prob = runif(n()),
           ct_dna = case_when(ct_dna_prob < dna_rate ~ 1,
                              TRUE ~ 0),
           ct_rebook_prob = runif(n()),
           ct_rebook = case_when(ct_dna == 0 ~ "Attended",
                                 ct_rebook_prob < dna_rebook_rate ~ "Rebook",
                                 TRUE ~ "Opt-out"))
  
  ### Aggregate Attendance, DNA and Rebooked
  ct_dna_agg_df <- ct_dna_df %>%
    group_by(Trial, ct_rebook) %>%
    summarise("Total" = n())
  
  ### Simulate CT scan outcomes
  ct_outcomes_df <- ct_dna_df %>%
    filter(ct_rebook != "Opt-out") %>%
    mutate(ct_outcome_prob = runif(n()),
           ct_outcome = case_when(ct_outcome_prob < ct_scan_positive_y1 ~ "Positive",
                                  TRUE ~ "Negative"))
  
  ### Aggregate Outcomes
  ct_outcomes_agg_df <- ct_outcomes_df %>%
    group_by(Trial, ct_outcome) %>%
    summarise("Total" = n())
  
  ### Negative Scans on 24 month follow-up
  ct_negative_fu_df <- ct_outcomes_df %>%
    filter(ct_outcome == "Negative") %>%
    mutate(ct_neg_fu_prob = runif(n()),
           ct_neg_fu = case_when(ct_neg_fu_prob < ct_scan_negative_24m_fu_y1 ~ "FU",
                                 TRUE ~ "Discharged"))
  
  ### 24-month follow up output df
  ct_24M_FU_output <- ct_negative_fu_df %>%
    filter(ct_neg_fu == "FU")
  
  ### Aggregate Negative Scans Outcomes
  ct_negative_fu_agg_df <- ct_negative_fu_df %>%
    group_by(Trial, ct_neg_fu) %>%
    summarise("Total" = n())
  
  ### Output to next stage
  ct_output_df <- ct_outcomes_df %>%
    filter(ct_outcome == "Positive")
  
  return(list(ct_exclusion_agg_df, ct_dna_agg_df, ct_outcomes_agg_df, ct_negative_fu_df, ct_24M_FU_output, ct_output_df))
  
}
