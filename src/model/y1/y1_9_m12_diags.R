
# Simulate Year 1 12-month Diagnostics -------------------------------------

y1_m12_diags_modalities_df <- m12_diagnostic_modalities(input_df = y1_m12_add_diags_df,
                                                        pet_rate = m12_diagnostics_pet_y1,
                                                        bronch_rate = m12_diagnostics_bronch_y1,
                                                        ebus_rate = m12_diagnostics_ebus_y1,
                                                        ct_bio_rate = m12_diagnostics_ct_bio_y1,
                                                        nav_bronch_rate = m12_diagnostics_nav_bronch_y1,
                                                        lft_rate = m12_diagnostics_lft_y1)

y1_m12_diag_list <- list(y1_m12_diags_modalities_df)
