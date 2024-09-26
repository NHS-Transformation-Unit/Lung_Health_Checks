
# Opt-out Rate ------------------------------------------------------------

lhc_opt_out_rate_y1 <- assumptions_lhc[[1,4]]
lhc_opt_out_rate_y2 <- assumptions_lhc[[1,5]]
lhc_opt_out_rate_y3 <- assumptions_lhc[[1,6]]
lhc_opt_out_rate_y4 <- assumptions_lhc[[1,7]]
lhc_opt_out_rate_y5 <- assumptions_lhc[[1,8]]

# DNA Rate ----------------------------------------------------------------

lhc_dna_rate_y1 <- assumptions_lhc[[2,4]]
lhc_dna_rate_y2 <- assumptions_lhc[[2,5]]
lhc_dna_rate_y3 <- assumptions_lhc[[2,6]]
lhc_dna_rate_y4 <- assumptions_lhc[[2,7]]
lhc_dna_rate_y5 <- assumptions_lhc[[2,8]]

lhc_attended_rate_y1 <- 1 - lhc_dna_rate_y1
lhc_attended_rate_y2 <- 1 - lhc_dna_rate_y2
lhc_attended_rate_y3 <- 1 - lhc_dna_rate_y3
lhc_attended_rate_y4 <- 1 - lhc_dna_rate_y4
lhc_attended_rate_y5 <- 1 - lhc_dna_rate_y5

lhc_dna_rebooked_rate_y1 <- assumptions_lhc[[3,4]]
lhc_dna_rebooked_rate_y2 <- assumptions_lhc[[3,5]]
lhc_dna_rebooked_rate_y3 <- assumptions_lhc[[3,6]]
lhc_dna_rebooked_rate_y4 <- assumptions_lhc[[3,7]]
lhc_dna_rebooked_rate_y5 <- assumptions_lhc[[3,8]]

# Positive LHC Rate -------------------------------------------------------

lhc_positive_rate_y1 <- assumptions_lhc[[4,4]]
lhc_positive_rate_y2 <- assumptions_lhc[[4,5]]
lhc_positive_rate_y3 <- assumptions_lhc[[4,6]]
lhc_positive_rate_y4 <- assumptions_lhc[[4,7]]
lhc_positive_rate_y5 <- assumptions_lhc[[4,8]]

lhc_negative_rate_y1 <- 1 - lhc_positive_rate_y1
lhc_negative_rate_y2 <- 1 - lhc_positive_rate_y2
lhc_negative_rate_y3 <- 1 - lhc_positive_rate_y3
lhc_negative_rate_y4 <- 1 - lhc_positive_rate_y4
lhc_negative_rate_y5 <- 1 - lhc_positive_rate_y5

# Negative Re-invitation Rate ---------------------------------------------

lhc_negative_ri_rate_y1 <- assumptions_lhc[[5,4]]
lhc_negative_ri_rate_y2 <- assumptions_lhc[[5,5]]
lhc_negative_ri_rate_y3 <- assumptions_lhc[[5,6]]
lhc_negative_ri_rate_y4 <- assumptions_lhc[[5,7]]
lhc_negative_ri_rate_y5 <- assumptions_lhc[[5,8]] 


# Opt-out and DNA Re-invitation Rate --------------------------------------

lhc_oodna_ri_rate_y1 <- assumptions_lhc[[6,4]]
lhc_oodna_ri_rate_y2 <- assumptions_lhc[[6,5]]
lhc_oodna_ri_rate_y3 <- assumptions_lhc[[6,6]]
lhc_oodna_ri_rate_y4 <- assumptions_lhc[[6,7]]
lhc_oodna_ri_rate_y5 <- assumptions_lhc[[6,8]]
