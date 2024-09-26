
# Create Y4 Re-invites ----------------------------------------------------

y2_lhc_opt_out_sum <- y2_lhc_opt_out %>%
  mutate(reinvite_prob = runif(n()),
         reinvite = case_when(reinvite_prob < lhc_oodna_ri_rate_y2 ~ 1,
                              TRUE ~ 0)) %>%
  filter(reinvite == 1) %>%
  group_by(Trial) %>%
  summarise(Total = n())

y2_lhc_dna_opt_out_sum <- y2_lhc_dna_opt_out %>%
  mutate(reinvite_prob = runif(n()),
         reinvite = case_when(reinvite_prob < lhc_oodna_ri_rate_y2 ~ 1,
                              TRUE ~ 0)) %>%
  filter(reinvite == 1) %>%
  group_by(Trial) %>%
  summarise(Total = n())

y2_lhc_neg_ri_sum <- y2_lhc_neg_ri %>%
  group_by(Trial) %>%
  summarise(Total = n())

y2_ct_opt_out_sum <- y2_ct_opt_out %>%
  mutate(reinvite_prob = runif(n()),
         reinvite = case_when(reinvite_prob < ct_dna_ri_rate_y2 ~ 1,
                              TRUE ~ 0)) %>%
  filter(reinvite == 1) %>%
  group_by(Trial) %>%
  summarise(Total = n())

y2_m3_opt_out_sum <- y2_m3_opt_out %>%
  mutate(reinvite_prob = runif(n()),
         reinvite = case_when(reinvite_prob < ct_dna_ri_rate_y2 ~ 1,
                              TRUE ~ 0)) %>%
  filter(reinvite == 1) %>%
  group_by(Trial) %>%
  summarise(Total = n())


y4_reinvites <- rbind(y2_lhc_opt_out_sum,
                      y2_lhc_dna_opt_out_sum,
                      y2_lhc_neg_ri_sum,
                      y2_ct_opt_out_sum,
                      y2_m3_opt_out_sum,
                      y4_reinvites_y1) %>%
  group_by(Trial) %>%
  summarise(Total = sum(Total, na.rm = TRUE))



# Create Y5 Re-invites ----------------------------------------------------

y2_m12_opt_out_sum <- y2_m12_opt_out %>%
  mutate(reinvite_prob = runif(n()),
         reinvite = case_when(reinvite_prob < ct_dna_ri_rate_y2 ~ 1,
                              TRUE ~ 0)) %>%
  filter(reinvite == 1) %>%
  group_by(Trial) %>%
  summarise(Total = n())

y5_reinvites_y2 <- y2_m12_opt_out_sum


# Create Y6 Re-invites ----------------------------------------------------

y2_m24_opt_out_sum <- y2_m24_opt_out %>%
  mutate(reinvite_prob = runif(n()),
         reinvite = case_when(reinvite_prob < ct_dna_ri_rate_y2 ~ 1,
                              TRUE ~ 0)) %>%
  filter(reinvite == 1) %>%
  group_by(Trial) %>%
  summarise(Total = n())

y6_reinvites_y2 <- y2_m24_opt_out_sum