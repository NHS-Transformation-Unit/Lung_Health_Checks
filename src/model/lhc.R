
# Initial Attendances -----------------------------------------------------

lhc_dna_df <- uptake_pop_df %>%
  mutate(lhc_initial_dna_prob = runif(n()),
         lhc_initial_dna = case_when(lhc_initial_dna_prob < lhc_dna_rate ~ 1,
                                     TRUE ~ 0))
         