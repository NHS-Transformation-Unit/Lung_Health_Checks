
# Uptake Population -------------------------------------------------------

y1_uptake_hist <- uptake_pop_chart_visual(y1_uptake_pop, "#407EC9", "Year 1")


# LHC Activity ------------------------------------------------------------

y1_lhc_activity_hist_df <- y1_lhc_list[[3]] %>%
  filter(lhc_initial_dna_rebook != "Opt-out")

y1_lhc_activity_hist <- lhc_activity_chart_visual(y1_lhc_activity_hist_df, "#407EC9", "Year 1")
