
# Screening Population ----------------------------------------------------

screening_pop <- total_pop * smk_rate

# Create simulated datasets -----------------------------------------------

screening_pop_df <- data.frame()

for (i in 1:trials){

screening_pop_trial <- data.frame(
  Trial = i,
  Pop_ID = seq(1, screening_pop),
  uuid = paste0("Trial_", i, "_ID_", seq(1, screening_pop)),
  uptake_prob = runif(n = screening_pop)
)

screening_pop_df <- rbind(screening_pop_df, screening_pop_trial)

}

uptake_pop_df <- uptake_pop_df %>%
  filter(uptake_prob < uptake_rate)
