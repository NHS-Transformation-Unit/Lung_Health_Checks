
# Simulate Year 1 24-month Diagnostics -------------------------------------

y1_m24_diags_modalities_df <- m24_diagnostic_modalities(input_df = y1_m24_add_diags_df,
                                                        pet_rate = m24_diagnostics_pet_y1,
                                                        bronch_rate = m24_diagnostics_bronch_y1,
                                                        ebus_rate = m24_diagnostics_ebus_y1,
                                                        ct_bio_rate = m24_diagnostics_ct_bio_y1,
                                                        nav_bronch_rate = m24_diagnostics_nav_bronch_y1,
                                                        lft_rate = m24_diagnostics_lft_y1)

y1_m24_diag_list <- list(y1_m24_diags_modalities_df)
