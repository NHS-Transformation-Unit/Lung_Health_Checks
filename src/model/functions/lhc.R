lhc <- function(uptake_pop, opt_out, lhc_dna_rate, lhc_dna_rebook_rate, positive, negative_ri){
  
  ### Simulate patients to opt-out of the lhc offer
  lhc_opt_df <- uptake_pop %>%
    mutate(lhc_opt_out_prob = runif(n()),
           lhc_opt_out = case_when(lhc_opt_out_prob < opt_out ~ 1,
                                   TRUE ~ 0)) 
  lhc_opt_in_df <- lhc_opt_df %>%
    filter(lhc_opt_out == 0)
  
  lhc_opt_out_df <- lhc_opt_df %>%
    filter(lhc_opt_out == 1)
  
  ### Simulate opt-in patients to DNA their lhc appointment and then determine if rebooked or to be re-invited
  lhc_dna_df <- lhc_opt_in_df %>%
    mutate(lhc_initial_dna_prob = runif(n()),
           lhc_initial_dna = case_when(lhc_initial_dna_prob < lhc_dna_rate ~ 1,
                                       TRUE ~ 0)) %>%
    mutate(lhc_initial_rebook_prob = runif(n()),
           lhc_initial_dna_rebook = case_when(lhc_initial_dna == 0 ~ "Attended",
                                              lhc_initial_rebook_prob < lhc_dna_rebook_rate ~ "Rebook",
                                              TRUE ~ "Opt-out"))
  
  lhc_dna_opt_out_df <- lhc_dna_df %>%
    filter(lhc_initial_dna_rebook == "Opt-out")
  
  ### Aggregate Attendance, DNA and Rebooked
  lhc_dna_agg_df <- lhc_dna_df %>%
    group_by(Trial, lhc_initial_dna_rebook) %>%
    summarise("Total" = n())
  
  ### Simulate positive and negative outcomes
  lhc_outcome_df <- lhc_dna_df %>%
    filter(lhc_initial_dna_rebook != "Opt-out") %>%
    mutate(lhc_outcome_prob = runif(n()),
           lhc_outcome = case_when(lhc_outcome_prob < positive ~ "Positive",
                                   TRUE ~ "Negative"))
  
  ### Aggregate Outcomes
  lhc_outcome_agg_df <- lhc_outcome_df %>%
    group_by(Trial, lhc_outcome) %>%
    summarise("Total" = n())
  
  ### Simulate negative re-invitation outcomes
  lhc_negative_ri_df <- lhc_outcome_df %>%
    filter(lhc_outcome == "Negative") %>%
    mutate(lhc_negative_ri_prob = runif(n()),
           lhc_negative_ri = case_when(lhc_negative_ri_prob < negative_ri ~ "Invite",
                                       TRUE ~ "Discharged"))
  
  lhc_negative_m24_ri_df <- lhc_negative_ri_df %>%
    filter(lhc_negative_ri == "Invite")
  
  ### Aggregate Outcomes
  lhc_negative_ri_agg_df <- lhc_negative_ri_df %>%
    group_by(Trial, lhc_negative_ri) %>%
    summarise("Total" = n())
  
  ### Outputs for next stage
  lhc_positive_df <- lhc_outcome_df %>%
    filter(lhc_outcome == "Positive")
  
  
  ### Output all required dataframes as a list
  return(list(lhc_opt_out_df, lhc_dna_opt_out_df, lhc_dna_agg_df, lhc_outcome_agg_df, lhc_negative_ri_agg_df, lhc_positive_df, lhc_negative_m24_ri_df))
  
}
