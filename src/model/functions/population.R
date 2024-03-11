uptake_pop <- function(start_pop, age_in, age_out, smk_current, smk_prev, screened_prev, repeats, uptake){
  
  ### Determine size of the population for screening in the year
  screening_pop <- (start_pop * (1 + (age_in - age_out)) * (smk_current + smk_prev)) - screened_prev + repeats
  
  ### Simulate starting dataframes of the screening population
  screening_pop_df <- data.frame()
  
  for (i in 1:trials){
    
    screening_pop_trial <- data.frame(
      Trial = i,
      Pop_ID = seq(1, screening_pop),
      uuid = paste0("Trial_", i, "_ID_", seq(1, screening_pop))
    )
    
    screening_pop_df <- rbind(screening_pop_df, screening_pop_trial)
    
  }
  
  ### Filter to the population that you will screen in the year
  uptake_pop_df <- screening_pop_df %>%
    mutate(uptake_prob = runif(n = nrow(screening_pop_df))) %>%
    filter(uptake_prob < uptake)
  
  
}
