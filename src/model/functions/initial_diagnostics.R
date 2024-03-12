initial_diagnostic_modalities <- function(input_df, pet_rate, bronch_rate, ebus_rate, ct_bio_rate, nav_bronch_rate){
  
  ### Simulate diagnostic modalitiy requirements
  initial_diag_modalities_df <- input_df %>%
    mutate(pet_prob = runif(n()),
           pet = case_when(pet_prob < pet_rate ~ 1,
                           TRUE ~ 0),
           bronch_prob = runif(n()),
           bronch = case_when(bronch_prob < bronch_rate ~ 1,
                              TRUE ~ 0),
           ebus_prob = runif(n()),
           ebus = case_when(ebus_prob < ebus_rate ~ 1,
                            TRUE ~ 0),
           ct_bio_prob = runif(n()),
           ct_bio = case_when(ct_bio_prob < ct_bio_rate ~ 1,
                              TRUE ~ 0),
           nav_bronch_prob = runif(n()),
           nav_bronch = case_when(nav_bronch_prob < nav_bronch_rate ~ 1,
                                  TRUE ~0)
    )
  
  ### Aggregate Diagnostic Activity
  initial_diag_modalities_agg_df <- initial_diag_modalities_df %>%
    group_by(Trial) %>%
    summarise(pet = sum(pet, na.rm = TRUE),
              bronch = sum(bronch, na.rm = TRUE),
              ebus = sum(ebus, na.rm = TRUE),
              ct_bio = sum(ct_bio, na.rm = TRUE),
              nav_bronch = sum(nav_bronch, na.rm = TRUE)
    )
}
