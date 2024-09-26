
# Create Y7 Re-invites ----------------------------------------------------

y5_lhc_opt_out_sum <- y5_lhc_opt_out %>%
  mutate(reinvite_prob = runif(n()),
         reinvite = case_when(reinvite_prob < lhc_oodna_ri_rate_y5 ~ 1,
                              TRUE ~ 0)) %>%
  filter(reinvite == 1) %>%
  group_by(Trial) %>%
  summarise(Total = n())

y5_lhc_dna_opt_out_sum <- y5_lhc_dna_opt_out %>%
  mutate(reinvite_prob = runif(n()),
         reinvite = case_when(reinvite_prob < lhc_oodna_ri_rate_y5 ~ 1,
                              TRUE ~ 0)) %>%
  filter(reinvite == 1) %>%
  group_by(Trial) %>%
  summarise(Total = n())

y5_lhc_neg_ri_sum <- y5_lhc_neg_ri %>%
  group_by(Trial) %>%
  summarise(Total = n())

y5_ct_opt_out_sum <- y5_ct_opt_out %>%
  mutate(reinvite_prob = runif(n()),
         reinvite = case_when(reinvite_prob < ct_dna_ri_rate_y5 ~ 1,
                              TRUE ~ 0)) %>%
  filter(reinvite == 1) %>%
  group_by(Trial) %>%
  summarise(Total = n())

y5_m3_opt_out_sum <- y5_m3_opt_out %>%
  mutate(reinvite_prob = runif(n()),
         reinvite = case_when(reinvite_prob < ct_dna_ri_rate_y5 ~ 1,
                              TRUE ~ 0)) %>%
  filter(reinvite == 1) %>%
  group_by(Trial) %>%
  summarise(Total = n())


y5_reinvites <- rbind(y5_lhc_opt_out_sum,
                      y5_lhc_dna_opt_out_sum,
                      y5_lhc_neg_ri_sum,
                      y5_ct_opt_out_sum,
                      y5_m3_opt_out_sum,
                      y7_reinvites_y3,
                      y7_reinvites_y4) %>%
  group_by(Trial) %>%
  summarise(Total = sum(Total, na.rm = TRUE))



# Create Y8 Re-invites ----------------------------------------------------

y5_m12_opt_out_sum <- y5_m12_opt_out %>%
  mutate(reinvite_prob = runif(n()),
         reinvite = case_when(reinvite_prob < ct_dna_ri_rate_y5 ~ 1,
                              TRUE ~ 0)) %>%
  filter(reinvite == 1) %>%
  group_by(Trial) %>%
  summarise(Total = n())

y8_reinvites_y5 <- y5_m12_opt_out_sum


# Create Y9 Re-invites ----------------------------------------------------

y5_m24_opt_out_sum <- y5_m24_opt_out %>%
  mutate(reinvite_prob = runif(n()),
         reinvite = case_when(reinvite_prob < ct_dna_ri_rate_y5 ~ 1,
                              TRUE ~ 0)) %>%
  filter(reinvite == 1) %>%
  group_by(Trial) %>%
  summarise(Total = n())

y9_reinvites_y5 <- y5_m24_opt_out_sum
