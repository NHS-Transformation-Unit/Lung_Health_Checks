
# Simulate Year 1 LHC -----------------------------------------------------

y1_lhc_list <- lhc(uptake_pop = y1_uptake_pop,
                   opt_out = lhc_opt_out_rate_y1,
                   lhc_dna_rate = lhc_dna_rate_y1,
                   lhc_dna_rebook_rate = lhc_dna_rebooked_rate_y1,
                   positive = lhc_positive_rate_y1,
                   negative_ri = lhc_negative_ri_rate_y1)

y1_lhc_pos <- y1_lhc_list[[4]]
