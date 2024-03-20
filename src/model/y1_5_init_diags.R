
# Simulate Year 1 Initial Diagnostics -------------------------------------

y1_init_diags_modalities_df <- initial_diagnostic_modalities(input_df = y1_init_add_diags_df,
                                                             pet_rate = initial_diagnostics_pet_y1,
                                                             bronch_rate = initial_diagnostics_bronch_y1,
                                                             ebus_rate = initial_diagnostics_ebus_y1,
                                                             ct_bio_rate = initial_diagnostics_ct_bio_y1,
                                                             nav_bronch_rate = initial_diagnostics_nav_bronch_y1,
                                                             lft_rate = initial_diagnostics_lft_y1)
