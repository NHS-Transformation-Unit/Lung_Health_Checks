
# Uptake Population -------------------------------------------------------

y2_uptake_hist <- uptake_pop_chart_visual(y2_uptake_pop, "#407EC9", "Year 2")

# LHC Activity ------------------------------------------------------------

y2_lhc_activity_hist_df <- y2_lhc_list[[3]] %>%
  filter(lhc_initial_dna_rebook != "Opt-out")

y2_lhc_activity_hist <- lhc_activity_chart_visual(y2_lhc_activity_hist_df, "#407EC9", "Year 2")

# LHC Outcomes ------------------------------------------------------------

y2_lhc_outcomes_hist_df <- y2_lhc_list[[4]]

y2_lhc_outcomes_hist <- lhc_outcomes_chart_visual(y2_lhc_outcomes_hist_df, "#407EC9", "Year 2")


# LHC Opt-outs ------------------------------------------------------------

y2_lhc_opt_out_hist_df <- y2_lhc_list[[3]] %>%
  filter(lhc_initial_dna_rebook == "Opt-out")

y2_lhc_opt_out_hist <- lhc_opt_out_chart_visual(y2_lhc_opt_out_hist_df, "#407EC9", "Year 2")

# LHC Opt-outs ------------------------------------------------------------

y2_lhc_neg_ri_hist_df <- y2_lhc_list[[7]] %>%
  group_by(Trial) %>%
  summarise(Total = n())

y2_lhc_neg_ri_hist <- lhc_neg_ri_chart_visual(y2_lhc_neg_ri_hist_df, "#407EC9", "Year 2")
