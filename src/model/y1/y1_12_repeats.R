
# Create Y3 Re-invites ----------------------------------------------------

y1_lhc_opt_out_sum <- y1_lhc_opt_out %>%
  mutate(reinvite_prob = runif(n()),
         reinvite = case_when(reinvite_prob < lhc_oodna_ri_rate_y1 ~ 1,
                              TRUE ~ 0)) %>%
  filter(reinvite == 1) %>%
  group_by(Trial) %>%
  summarise(Total = n())

y1_lhc_dna_opt_out_sum <- y1_lhc_dna_opt_out %>%
  mutate(reinvite_prob = runif(n()),
         reinvite = case_when(reinvite_prob < lhc_oodna_ri_rate_y1 ~ 1,
                              TRUE ~ 0)) %>%
  filter(reinvite == 1) %>%
  group_by(Trial) %>%
  summarise(Total = n())

y1_lhc_neg_ri_sum <- y1_lhc_neg_ri %>%
  group_by(Trial) %>%
  summarise(Total = n())

y1_ct_opt_out_sum <- y1_ct_opt_out %>%
  mutate(reinvite_prob = runif(n()),
         reinvite = case_when(reinvite_prob < ct_dna_ri_rate_y1 ~ 1,
                              TRUE ~ 0)) %>%
  filter(reinvite == 1) %>%
  group_by(Trial) %>%
  summarise(Total = n())

y1_m3_opt_out_sum <- y1_m3_opt_out %>%
  mutate(reinvite_prob = runif(n()),
         reinvite = case_when(reinvite_prob < ct_dna_ri_rate_y1 ~ 1,
                              TRUE ~ 0)) %>%
  filter(reinvite == 1) %>%
  group_by(Trial) %>%
  summarise(Total = n())


y3_reinvites <- rbind(y1_lhc_opt_out_sum,
                      y1_lhc_dna_opt_out_sum,
                      y1_lhc_neg_ri_sum,
                      y1_ct_opt_out_sum,
                      y1_m3_opt_out_sum) %>%
  group_by(Trial) %>%
  summarise(Total = sum(Total, na.rm = TRUE))

# Create Y4 Re-invites ----------------------------------------------------

y1_m12_opt_out_sum <- y1_m12_opt_out %>%
  mutate(reinvite_prob = runif(n()),
         reinvite = case_when(reinvite_prob < ct_dna_ri_rate_y1 ~ 1,
                              TRUE ~ 0)) %>%
  filter(reinvite == 1) %>%
  group_by(Trial) %>%
  summarise(Total = n())

y4_reinvites_y1 <- y1_m12_opt_out_sum


# Create Y5 Re-invites ----------------------------------------------------

y1_m24_opt_out_sum <- y1_m24_opt_out %>%
  mutate(reinvite_prob = runif(n()),
         reinvite = case_when(reinvite_prob < ct_dna_ri_rate_y1 ~ 1,
                              TRUE ~ 0)) %>%
  filter(reinvite == 1) %>%
  group_by(Trial) %>%
  summarise(Total = n())

y5_reinvites_y1 <- y1_m24_opt_out_sum
