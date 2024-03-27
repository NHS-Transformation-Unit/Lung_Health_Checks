
# Uptake Population -------------------------------------------------------

y1_uptake_hist <- uptake_pop_chart_visual(y1_uptake_pop, "#407EC9", "Year 1")

# LHC Activity ------------------------------------------------------------

y1_lhc_activity_hist_df <- y1_lhc_list[[3]] %>%
  filter(lhc_initial_dna_rebook != "Opt-out")

y1_lhc_activity_hist <- lhc_activity_chart_visual(y1_lhc_activity_hist_df, "#407EC9", "Year 1")

# LHC Outcomes ------------------------------------------------------------

y1_lhc_outcomes_hist_df <- y1_lhc_list[[4]]

y1_lhc_outcomes_hist <- lhc_outcomes_chart_visual(y1_lhc_outcomes_hist_df, "#407EC9", "Year 1")


# LHC Opt-outs ------------------------------------------------------------

y1_lhc_opt_out_hist_df <- y1_lhc_list[[3]] %>%
  filter(lhc_initial_dna_rebook == "Opt-out")

y1_lhc_opt_out_hist <- lhc_opt_out_chart_visual(y1_lhc_opt_out_hist_df, "#407EC9", "Year 1")

# LHC Opt-outs ------------------------------------------------------------

y1_lhc_neg_ri_hist_df <- y1_lhc_list[[7]] %>%
  group_by(Trial) %>%
  summarise(Total = n())

y1_lhc_neg_ri_hist <- lhc_neg_ri_chart_visual(y1_lhc_neg_ri_hist_df, "#407EC9", "Year 1")

# CT Scan Activity --------------------------------------------------------

y1_ct_activity_hist_df <- y1_ct_list[[2]] %>%
  filter(ct_rebook != "Opt-out")

y1_ct_activity_hist <- ct_activity_chart_visual(y1_ct_activity_hist_df, "#407EC9", "Year 1")


# CT Scan Outcomes --------------------------------------------------------

y1_ct_outcomes_hist_df <- y1_ct_list[[3]]

y1_ct_outcomes_hist <- ct_outcomes_chart_visual(y1_ct_outcomes_hist_df, "#407EC9", "Year 1")


# CT Scan Negative Follow-ups ---------------------------------------------

y1_ct_neg_ri_hist_df <- y1_ct_list[[5]] %>%
  group_by(Trial) %>%
  summarise(Total = n())

y1_ct_neg_ri_hist <- ct_neg_ri_chart_visual(y1_ct_neg_ri_hist_df, "#407EC9", "Year 1")


# CT Scan Opt-Outs --------------------------------------------------------

y1_ct_opt_out_hist_df <- y1_ct_list[[7]] %>%
  group_by(Trial) %>%
  summarise(Total = n())

y1_ct_opt_out_hist <- ct_opt_out_chart_visual(y1_ct_opt_out_hist_df, "#407EC9", "Year 1")
