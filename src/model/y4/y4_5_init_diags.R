
# Simulate Year 4 Initial Diagnostics -------------------------------------

y4_init_diags_modalities_df <- initial_diagnostic_modalities(input_df = y4_init_add_diags_df,
                                                             pet_rate = initial_diagnostics_pet_y4,
                                                             bronch_rate = initial_diagnostics_bronch_y4,
                                                             ebus_rate = initial_diagnostics_ebus_y4,
                                                             ct_bio_rate = initial_diagnostics_ct_bio_y4,
                                                             nav_bronch_rate = initial_diagnostics_nav_bronch_y4,
                                                             lft_rate = initial_diagnostics_lft_y4)

y4_init_diag_list <- list(y4_init_diags_modalities_df)
