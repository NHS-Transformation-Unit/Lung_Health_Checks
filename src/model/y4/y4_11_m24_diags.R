
# Simulate Year 4 24-month Diagnostics -------------------------------------

y4_m24_diags_modalities_df <- m24_diagnostic_modalities(input_df = y4_m24_add_diags_df,
                                                        pet_rate = m24_diagnostics_pet_y4,
                                                        bronch_rate = m24_diagnostics_bronch_y4,
                                                        ebus_rate = m24_diagnostics_ebus_y4,
                                                        ct_bio_rate = m24_diagnostics_ct_bio_y4,
                                                        nav_bronch_rate = m24_diagnostics_nav_bronch_y4,
                                                        lft_rate = m24_diagnostics_lft_y4)

y4_m24_diag_list <- list(y4_m24_diags_modalities_df)
