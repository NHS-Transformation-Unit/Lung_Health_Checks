
# Simulate Year 5 Initial Diagnostics -------------------------------------

y5_init_diags_modalities_df <- initial_diagnostic_modalities(input_df = y5_init_add_diags_df,
                                                             pet_rate = initial_diagnostics_pet_y5,
                                                             bronch_rate = initial_diagnostics_bronch_y5,
                                                             ebus_rate = initial_diagnostics_ebus_y5,
                                                             ct_bio_rate = initial_diagnostics_ct_bio_y5,
                                                             nav_bronch_rate = initial_diagnostics_nav_bronch_y5,
                                                             lft_rate = initial_diagnostics_lft_y5)

y5_init_diag_list <- list(y5_init_diags_modalities_df)
