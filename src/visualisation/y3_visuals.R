
# Uptake Population -------------------------------------------------------

y3_uptake_hist <- uptake_pop_chart_visual(y3_uptake_pop, "#407EC9", "Year 3")

# LHC Activity ------------------------------------------------------------

y3_lhc_activity_hist_df <- y3_lhc_list[[3]] %>%
  filter(lhc_initial_dna_rebook != "Opt-out")

y3_lhc_activity_hist <- lhc_activity_chart_visual(y3_lhc_activity_hist_df, "#407EC9", "Year 3")