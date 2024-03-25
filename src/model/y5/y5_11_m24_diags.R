
# Simulate Year 5 24-month Diagnostics -------------------------------------

y5_m24_diags_modalities_df <- m24_diagnostic_modalities(input_df = y5_m24_add_diags_df,
                                                        pet_rate = m24_diagnostics_pet_y5,
                                                        bronch_rate = m24_diagnostics_bronch_y5,
                                                        ebus_rate = m24_diagnostics_ebus_y5,
                                                        ct_bio_rate = m24_diagnostics_ct_bio_y5,
                                                        nav_bronch_rate = m24_diagnostics_nav_bronch_y5,
                                                        lft_rate = m24_diagnostics_lft_y5)

y5_m24_diag_list <- list(y5_m24_diags_modalities_df)
