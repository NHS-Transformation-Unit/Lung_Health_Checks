
# Uptake Population -------------------------------------------------------

y5_uptake_hist <- uptake_pop_chart_visual(y5_uptake_pop, "#407EC9", "Year 5")

# LHC Activity ------------------------------------------------------------

y5_lhc_activity_hist_df <- y5_lhc_list[[3]] %>%
  filter(lhc_initial_dna_rebook != "Opt-out")

y5_lhc_activity_hist <- lhc_activity_chart_visual(y5_lhc_activity_hist_df, "#407EC9", "Year 5")
