
# Simulate Year 3 12-month Diagnostics -------------------------------------

y3_m12_diags_modalities_df <- m12_diagnostic_modalities(input_df = y3_m12_add_diags_df,
                                                        pet_rate = m12_diagnostics_pet_y3,
                                                        bronch_rate = m12_diagnostics_bronch_y3,
                                                        ebus_rate = m12_diagnostics_ebus_y3,
                                                        ct_bio_rate = m12_diagnostics_ct_bio_y3,
                                                        nav_bronch_rate = m12_diagnostics_nav_bronch_y3,
                                                        lft_rate = m12_diagnostics_lft_y3)

y3_m12_diag_list <- list(y3_m12_diags_modalities_df)
