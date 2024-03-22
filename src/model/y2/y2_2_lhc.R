
# Simulate Year 2 LHC -----------------------------------------------------

y2_lhc_list <- lhc(uptake_pop = y2_uptake_pop,
                   opt_out = lhc_opt_out_rate_y2,
                   lhc_dna_rate = lhc_dna_rate_y2,
                   lhc_dna_rebook_rate = lhc_dna_rebooked_rate_y2,
                   positive = lhc_positive_rate_y2,
                   negative_ri = lhc_negative_ri_rate_y2)

y2_lhc_pos <- y2_lhc_list[[6]]

# Creating outputs to inform m24 reinvites

y2_lhc_opt_out <- y2_lhc_list[[1]] %>%
  select(1:3)

y2_lhc_dna_opt_out <- y2_lhc_list[[2]] %>%
  select(1:3)

y2_lhc_neg_ri <- y2_lhc_list[[7]] %>%
  select(1:3)