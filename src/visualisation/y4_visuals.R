
# Uptake Population -------------------------------------------------------

y4_uptake_hist <- uptake_pop_chart_visual(y4_uptake_pop, "#407EC9", "Year 4")

# LHC Activity ------------------------------------------------------------

y4_lhc_activity_hist_df <- y4_lhc_list[[3]] %>%
  filter(lhc_initial_dna_rebook != "Opt-out")

y4_lhc_activity_hist <- lhc_activity_chart_visual(y4_lhc_activity_hist_df, "#407EC9", "Year 4")