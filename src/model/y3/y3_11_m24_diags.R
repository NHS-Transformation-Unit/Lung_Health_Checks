
# Simulate Year 3 24-month Diagnostics -------------------------------------

y3_m24_diags_modalities_df <- m24_diagnostic_modalities(input_df = y3_m24_add_diags_df,
                                                        pet_rate = m24_diagnostics_pet_y3,
                                                        bronch_rate = m24_diagnostics_bronch_y3,
                                                        ebus_rate = m24_diagnostics_ebus_y3,
                                                        ct_bio_rate = m24_diagnostics_ct_bio_y3,
                                                        nav_bronch_rate = m24_diagnostics_nav_bronch_y3,
                                                        lft_rate = m24_diagnostics_lft_y3)

y3_m24_diag_list <- list(y3_m24_diags_modalities_df)
