
# Total Population --------------------------------------------------------

total_pop <- assumptions_pop[[1,4]]

# Smoking Rate ------------------------------------------------------------

smk_rate_current_y1 <- assumptions_pop[[2,4]]
smk_rate_current_y2 <- assumptions_pop[[2,5]]
smk_rate_current_y3 <- assumptions_pop[[2,6]]
smk_rate_current_y4 <- assumptions_pop[[2,7]]
smk_rate_current_y5 <- assumptions_pop[[2,8]]

smk_rate_prev_y1 <- assumptions_pop[[3,4]]
smk_rate_prev_y2 <- assumptions_pop[[3,5]]
smk_rate_prev_y3 <- assumptions_pop[[3,6]]
smk_rate_prev_y4 <- assumptions_pop[[3,7]]
smk_rate_prev_y5 <- assumptions_pop[[3,8]]


# Uptake Rate -------------------------------------------------------------

uptake_rate_y1 <- assumptions_pop[[4,4]]
uptake_rate_y2 <- assumptions_pop[[4,5]]
uptake_rate_y3 <- assumptions_pop[[4,6]]
uptake_rate_y4 <- assumptions_pop[[4,7]]
uptake_rate_y5 <- assumptions_pop[[4,8]]

# Age in and out ----------------------------------------------------------

age_in_y1 <- assumptions_pop[[5,4]]
age_in_y2 <- assumptions_pop[[5,5]]
age_in_y3 <- assumptions_pop[[5,6]]
age_in_y4 <- assumptions_pop[[5,7]]
age_in_y5 <- assumptions_pop[[5,8]]

age_out_y1 <- assumptions_pop[[6,4]]
age_out_y2 <- assumptions_pop[[6,5]]
age_out_y3 <- assumptions_pop[[6,6]]
age_out_y4 <- assumptions_pop[[6,7]]
age_out_y5 <- assumptions_pop[[6,8]]

# Age in and out relative -------------------------------------------------

age_diff_y1 <- age_in_y1 - age_out_y1
age_diff_y2 <- age_in_y2 - age_out_y2
age_diff_y3 <- age_in_y3 - age_out_y3
age_diff_y4 <- age_in_y4 - age_out_y4
age_diff_y5 <- age_in_y5 - age_out_y5

age_diff_y1_c <- age_diff_y1
age_diff_y2_c <- (1 + age_diff_y1) * (1 + age_diff_y2)  - 1
age_diff_y3_c <- (1 + age_diff_y2_c) * (1 + age_diff_y3)  - 1
age_diff_y4_c <- (1 + age_diff_y3_c) * (1 + age_diff_y4)  - 1
age_diff_y5_c <- (1 + age_diff_y4_c) * (1 + age_diff_y5)  - 1
