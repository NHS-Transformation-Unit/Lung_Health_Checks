
# Simulate Year 2 12-month Diagnostics -------------------------------------

y2_m12_diags_modalities_df <- m12_diagnostic_modalities(input_df = y2_m12_add_diags_df,
                                                        pet_rate = initial_diagnostics_pet_y2,
                                                        bronch_rate = initial_diagnostics_bronch_y2,
                                                        ebus_rate = initial_diagnostics_ebus_y2,
                                                        ct_bio_rate = initial_diagnostics_ct_bio_y2,
                                                        nav_bronch_rate = initial_diagnostics_nav_bronch_y2,
                                                        lft_rate = initial_diagnostics_lft_y2)

y2_m12_diag_list <- list(y2_m12_diags_modalities_df)