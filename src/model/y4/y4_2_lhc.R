
# Simulate Year 4 LHC -----------------------------------------------------

y4_lhc_list <- lhc(uptake_pop = y4_uptake_pop,
                   opt_out = lhc_opt_out_rate_y4,
                   lhc_dna_rate = lhc_dna_rate_y4,
                   lhc_dna_rebook_rate = lhc_dna_rebooked_rate_y4,
                   positive = lhc_positive_rate_y4,
                   negative_ri = lhc_negative_ri_rate_y4)

y4_lhc_pos <- y4_lhc_list[[6]]

# Creating outputs to inform m24 reinvites

y4_lhc_opt_out <- y4_lhc_list[[1]] %>%
  select(1:3)

y4_lhc_dna_opt_out <- y4_lhc_list[[2]] %>%
  select(1:3)

y4_lhc_neg_ri <- y4_lhc_list[[7]] %>%
  select(1:3)
