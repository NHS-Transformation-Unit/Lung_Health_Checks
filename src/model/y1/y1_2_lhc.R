
# Simulate Year 1 LHC -----------------------------------------------------

y1_lhc_list <- lhc(uptake_pop = y1_uptake_pop,
                   opt_out = lhc_opt_out_rate_y1,
                   lhc_dna_rate = lhc_dna_rate_y1,
                   lhc_dna_rebook_rate = lhc_dna_rebooked_rate_y1,
                   positive = lhc_positive_rate_y1,
                   negative_ri = lhc_negative_ri_rate_y1)

y1_lhc_pos <- y1_lhc_list[[6]]

# Creating outputs to inform m24 reinvites

y1_lhc_opt_out <- y1_lhc_list[[1]] %>%
  select(1:3)

y1_lhc_dna_opt_out <- y1_lhc_list[[2]] %>%
  select(1:3)

y1_lhc_neg_ri <- y1_lhc_list[[7]] %>%
  select(1:3)
