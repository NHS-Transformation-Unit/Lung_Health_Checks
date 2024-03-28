
# Simulate Year 4 3-month Diagnostics -------------------------------------

y4_m3_diags_modalities_df <- m3_diagnostic_modalities(input_df = y4_m3_add_diags_df,
                                                      pet_rate = m3_diagnostics_pet_y4,
                                                      bronch_rate = m3_diagnostics_bronch_y4,
                                                      ebus_rate = m3_diagnostics_ebus_y4,
                                                      ct_bio_rate = m3_diagnostics_ct_bio_y4,
                                                      nav_bronch_rate = m3_diagnostics_nav_bronch_y4,
                                                      lft_rate = m3_diagnostics_lft_y4)

y4_m3_diag_list <- list(y4_m3_diags_modalities_df)
