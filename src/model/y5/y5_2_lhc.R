
# Simulate Year 5 LHC -----------------------------------------------------

y5_lhc_list <- lhc(uptake_pop = y5_uptake_pop,
                   opt_out = lhc_opt_out_rate_y5,
                   lhc_dna_rate = lhc_dna_rate_y5,
                   lhc_dna_rebook_rate = lhc_dna_rebooked_rate_y5,
                   positive = lhc_positive_rate_y5,
                   negative_ri = lhc_negative_ri_rate_y5)

y5_lhc_pos <- y5_lhc_list[[6]]

# Creating outputs to inform m24 reinvites

y5_lhc_opt_out <- y5_lhc_list[[1]] %>%
  select(1:3)

y5_lhc_dna_opt_out <- y5_lhc_list[[2]] %>%
  select(1:3)

y5_lhc_neg_ri <- y5_lhc_list[[7]] %>%
  select(1:3)
