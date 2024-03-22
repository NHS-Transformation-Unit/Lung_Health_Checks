
# Simulate Year 2 24-month Diagnostics -------------------------------------

y2_m24_diags_modalities_df <- m24_diagnostic_modalities(input_df = y2_m24_add_diags_df,
                                                        pet_rate = initial_diagnostics_pet_y2,
                                                        bronch_rate = initial_diagnostics_bronch_y2,
                                                        ebus_rate = initial_diagnostics_ebus_y2,
                                                        ct_bio_rate = initial_diagnostics_ct_bio_y2,
                                                        nav_bronch_rate = initial_diagnostics_nav_bronch_y2,
                                                        lft_rate = initial_diagnostics_lft_y2)

y2_m24_diag_list <- list(y2_m24_diags_modalities_df)