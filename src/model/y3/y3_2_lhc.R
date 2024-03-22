
# Simulate Year 3 LHC -----------------------------------------------------

y3_lhc_list <- lhc(uptake_pop = y3_uptake_pop,
                   opt_out = lhc_opt_out_rate_y3,
                   lhc_dna_rate = lhc_dna_rate_y3,
                   lhc_dna_rebook_rate = lhc_dna_rebooked_rate_y3,
                   positive = lhc_positive_rate_y3,
                   negative_ri = lhc_negative_ri_rate_y3)

y3_lhc_pos <- y3_lhc_list[[6]]

# Creating outputs to inform m24 reinvites

y3_lhc_opt_out <- y3_lhc_list[[1]] %>%
  select(1:3)

y3_lhc_dna_opt_out <- y3_lhc_list[[2]] %>%
  select(1:3)

y3_lhc_neg_ri <- y3_lhc_list[[7]] %>%
  select(1:3)
