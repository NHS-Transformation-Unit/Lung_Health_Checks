
# Simulate Year 3 Initial Diagnostics -------------------------------------

y3_init_diags_modalities_df <- initial_diagnostic_modalities(input_df = y3_init_add_diags_df,
                                                             pet_rate = initial_diagnostics_pet_y3,
                                                             bronch_rate = initial_diagnostics_bronch_y3,
                                                             ebus_rate = initial_diagnostics_ebus_y3,
                                                             ct_bio_rate = initial_diagnostics_ct_bio_y3,
                                                             nav_bronch_rate = initial_diagnostics_nav_bronch_y3,
                                                             lft_rate = initial_diagnostics_lft_y3)

y3_init_diag_list <- list(y3_init_diags_modalities_df)
