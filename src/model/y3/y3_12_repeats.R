
# Create Y5 Re-invites ----------------------------------------------------

y3_lhc_opt_out_sum <- y3_lhc_opt_out %>%
  mutate(reinvite_prob = runif(n()),
         reinvite = case_when(reinvite_prob < lhc_oodna_ri_rate_y3 ~ 1,
                              TRUE ~ 0)) %>%
  filter(reinvite == 1) %>%
  group_by(Trial) %>%
  summarise(Total = n())

y3_lhc_dna_opt_out_sum <- y3_lhc_dna_opt_out %>%
  mutate(reinvite_prob = runif(n()),
         reinvite = case_when(reinvite_prob < lhc_oodna_ri_rate_y3 ~ 1,
                              TRUE ~ 0)) %>%
  filter(reinvite == 1) %>%
  group_by(Trial) %>%
  summarise(Total = n())

y3_lhc_neg_ri_sum <- y3_lhc_neg_ri %>%
  group_by(Trial) %>%
  summarise(Total = n())

y3_ct_opt_out_sum <- y3_ct_opt_out %>%
  mutate(reinvite_prob = runif(n()),
         reinvite = case_when(reinvite_prob < ct_dna_ri_rate_y3 ~ 1,
                              TRUE ~ 0)) %>%
  filter(reinvite == 1) %>%
  group_by(Trial) %>%
  summarise(Total = n())

y3_m3_opt_out_sum <- y3_m3_opt_out %>%
  mutate(reinvite_prob = runif(n()),
         reinvite = case_when(reinvite_prob < ct_dna_ri_rate_y3 ~ 1,
                              TRUE ~ 0)) %>%
  filter(reinvite == 1) %>%
  group_by(Trial) %>%
  summarise(Total = n())


y5_reinvites <- rbind(y3_lhc_opt_out_sum,
                      y3_lhc_dna_opt_out_sum,
                      y3_lhc_neg_ri_sum,
                      y3_ct_opt_out_sum,
                      y3_m3_opt_out_sum,
                      y5_reinvites_y1,
                      y5_reinvites_y2) %>%
  group_by(Trial) %>%
  summarise(Total = sum(Total, na.rm = TRUE))



# Create Y6 Re-invites ----------------------------------------------------

y3_m12_opt_out_sum <- y3_m12_opt_out %>%
  mutate(reinvite_prob = runif(n()),
         reinvite = case_when(reinvite_prob < ct_dna_ri_rate_y3 ~ 1,
                              TRUE ~ 0)) %>%
  filter(reinvite == 1) %>%
  group_by(Trial) %>%
  summarise(Total = n())

y6_reinvites_y3 <- y3_m12_opt_out_sum


# Create Y7 Re-invites ----------------------------------------------------

y3_m24_opt_out_sum <- y3_m24_opt_out %>%
  mutate(reinvite_prob = runif(n()),
         reinvite = case_when(reinvite_prob < ct_dna_ri_rate_y3 ~ 1,
                              TRUE ~ 0)) %>%
  filter(reinvite == 1) %>%
  group_by(Trial) %>%
  summarise(Total = n())

y7_reinvites_y3 <- y3_m24_opt_out_sum
