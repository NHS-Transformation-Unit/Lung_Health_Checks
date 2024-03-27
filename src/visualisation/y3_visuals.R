
# Uptake Population -------------------------------------------------------

y3_uptake_hist <- uptake_pop_chart_visual(y3_uptake_pop, "#407EC9", "Year 3")

# LHC Activity ------------------------------------------------------------

y3_lhc_activity_hist_df <- y3_lhc_list[[3]] %>%
  filter(lhc_initial_dna_rebook != "Opt-out")

y3_lhc_activity_hist <- lhc_activity_chart_visual(y3_lhc_activity_hist_df, "#407EC9", "Year 3")

# LHC Outcomes ------------------------------------------------------------

y3_lhc_outcomes_hist_df <- y3_lhc_list[[4]]

y3_lhc_outcomes_hist <- lhc_outcomes_chart_visual(y3_lhc_outcomes_hist_df, "#407EC9", "Year 3")


# LHC Opt-outs ------------------------------------------------------------

y3_lhc_opt_out_hist_df <- y3_lhc_list[[3]] %>%
  filter(lhc_initial_dna_rebook == "Opt-out")

y3_lhc_opt_out_hist <- lhc_opt_out_chart_visual(y3_lhc_opt_out_hist_df, "#407EC9", "Year 3")

# LHC Opt-outs ------------------------------------------------------------

y3_lhc_neg_ri_hist_df <- y3_lhc_list[[7]] %>%
  group_by(Trial) %>%
  summarise(Total = n())

y3_lhc_neg_ri_hist <- lhc_neg_ri_chart_visual(y3_lhc_neg_ri_hist_df, "#407EC9", "Year 3")
