
# Uptake Population -------------------------------------------------------

y5_uptake_hist <- uptake_pop_chart_visual(y5_uptake_pop, "#407EC9", "Year 5")

# LHC Activity ------------------------------------------------------------

y5_lhc_activity_hist_df <- y5_lhc_list[[3]] %>%
  filter(lhc_initial_dna_rebook != "Opt-out")

y5_lhc_activity_hist <- lhc_activity_chart_visual(y5_lhc_activity_hist_df, "#407EC9", "Year 5")

# LHC Outcomes ------------------------------------------------------------

y5_lhc_outcomes_hist_df <- y5_lhc_list[[4]]

y5_lhc_outcomes_hist <- lhc_outcomes_chart_visual(y5_lhc_outcomes_hist_df, "#407EC9", "Year 5")


# LHC Opt-outs ------------------------------------------------------------

y5_lhc_opt_out_hist_df <- y5_lhc_list[[3]] %>%
  filter(lhc_initial_dna_rebook == "Opt-out")

y5_lhc_opt_out_hist <- lhc_opt_out_chart_visual(y5_lhc_opt_out_hist_df, "#407EC9", "Year 5")

# LHC Opt-outs ------------------------------------------------------------

y5_lhc_neg_ri_hist_df <- y5_lhc_list[[7]] %>%
  group_by(Trial) %>%
  summarise(Total = n())

y5_lhc_neg_ri_hist <- lhc_neg_ri_chart_visual(y5_lhc_neg_ri_hist_df, "#407EC9", "Year 5")

# CT Scan Activity --------------------------------------------------------

y5_ct_activity_hist_df <- y5_ct_list[[2]] %>%
  filter(ct_rebook != "Opt-out")

y5_ct_activity_hist <- ct_activity_chart_visual(y5_ct_activity_hist_df, "#407EC9", "Year 5")


# CT Scan Outcomes --------------------------------------------------------

y5_ct_outcomes_hist_df <- y5_ct_list[[3]]

y5_ct_outcomes_hist <- ct_outcomes_chart_visual(y5_ct_outcomes_hist_df, "#407EC9", "Year 5")


# CT Scan Negative Follow-ups ---------------------------------------------

y5_ct_neg_ri_hist_df <- y5_ct_list[[5]] %>%
  group_by(Trial) %>%
  summarise(Total = n())

y5_ct_neg_ri_hist <- ct_neg_ri_chart_visual(y5_ct_neg_ri_hist_df, "#407EC9", "Year 5")


# CT Scan Opt-Outs --------------------------------------------------------

y5_ct_opt_out_hist_df <- y5_ct_list[[7]] %>%
  group_by(Trial) %>%
  summarise(Total = n())

y5_ct_opt_out_hist <- ct_opt_out_chart_visual(y5_ct_opt_out_hist_df, "#407EC9", "Year 5")
