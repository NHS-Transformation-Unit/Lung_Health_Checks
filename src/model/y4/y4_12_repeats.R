
# Create Y6 Re-invites ----------------------------------------------------

y4_lhc_opt_out_sum <- y4_lhc_opt_out %>%
  group_by(Trial) %>%
  summarise(Total = n())

y4_lhc_dna_opt_out_sum <- y4_lhc_dna_opt_out %>%
  group_by(Trial) %>%
  summarise(Total = n())

y4_lhc_neg_ri_sum <- y4_lhc_neg_ri %>%
  group_by(Trial) %>%
  summarise(Total = n())

y4_ct_opt_out_sum <- y4_ct_opt_out %>%
  group_by(Trial) %>%
  summarise(Total = n())

y4_m3_opt_out_sum <- y4_m3_opt_out %>%
  group_by(Trial) %>%
  summarise(Total = n())


y4_reinvites <- rbind(y4_lhc_opt_out_sum,
                      y4_lhc_dna_opt_out_sum,
                      y4_lhc_neg_ri_sum,
                      y4_ct_opt_out_sum,
                      y4_m3_opt_out_sum,
                      y6_reinvites_y2,
                      y6_reinvites_y3) %>%
  group_by(Trial) %>%
  summarise(Total = sum(Total, na.rm = TRUE))



# Create Y7 Re-invites ----------------------------------------------------

y4_m12_opt_out_sum <- y4_m12_opt_out %>%
  group_by(Trial) %>%
  summarise(Total = n())

y7_reinvites_y4 <- y4_m12_opt_out_sum


# Create Y8 Re-invites ----------------------------------------------------

y4_m24_opt_out_sum <- y4_m24_opt_out %>%
  group_by(Trial) %>%
  summarise(Total = n())

y8_reinvites_y4 <- y4_m24_opt_out_sum
