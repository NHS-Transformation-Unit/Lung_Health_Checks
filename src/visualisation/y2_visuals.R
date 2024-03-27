
# Uptake Population -------------------------------------------------------

y2_uptake_hist <- uptake_pop_chart_visual(y2_uptake_pop, "#407EC9", "Year 2")

# LHC Activity ------------------------------------------------------------

y2_lhc_activity_hist_df <- y2_lhc_list[[3]] %>%
  filter(lhc_initial_dna_rebook != "Opt-out")

y2_lhc_activity_hist <- lhc_activity_chart_visual(y2_lhc_activity_hist_df, "#407EC9", "Year 2")
