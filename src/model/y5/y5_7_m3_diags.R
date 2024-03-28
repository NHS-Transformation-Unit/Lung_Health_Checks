
# Simulate Year 5 3-month Diagnostics -------------------------------------

y5_m3_diags_modalities_df <- m3_diagnostic_modalities(input_df = y5_m3_add_diags_df,
                                                      pet_rate = m3_diagnostics_pet_y5,
                                                      bronch_rate = m3_diagnostics_bronch_y5,
                                                      ebus_rate = m3_diagnostics_ebus_y5,
                                                      ct_bio_rate = m3_diagnostics_ct_bio_y5,
                                                      nav_bronch_rate = m3_diagnostics_nav_bronch_y5,
                                                      lft_rate = m3_diagnostics_lft_y5)

y5_m3_diag_list <- list(y5_m3_diags_modalities_df)
