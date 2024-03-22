
# Simulate Year 4 12-month Diagnostics -------------------------------------

y4_m12_diags_modalities_df <- m12_diagnostic_modalities(input_df = y4_m12_add_diags_df,
                                                        pet_rate = initial_diagnostics_pet_y4,
                                                        bronch_rate = initial_diagnostics_bronch_y4,
                                                        ebus_rate = initial_diagnostics_ebus_y4,
                                                        ct_bio_rate = initial_diagnostics_ct_bio_y4,
                                                        nav_bronch_rate = initial_diagnostics_nav_bronch_y4,
                                                        lft_rate = initial_diagnostics_lft_y4)

y4_m12_diag_list <- list(y4_m12_diags_modalities_df)
