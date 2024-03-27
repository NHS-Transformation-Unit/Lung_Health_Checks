
# Y5 model output creation

## Defining objects to be outputted for Y5

y5_uptake_pop_op <- y6_screened_input_df

y5_pop_smoke_op <- y5_lhc_list[[8]]
y5_lhc_book_op <- y5_lhc_list[[3]]
y5_lhc_outcome_op <- y5_lhc_list[[4]]

y5_ct_book_op <- y5_ct_list[[2]]
y5_ct_outcome_op <- y5_ct_list[[3]]
y5_ct_neg_outcome_op <- y5_ct_list[[8]]

y5_init_FU_op <- y5_init_treat_groups_list[[1]]
y5_init_diag_mod_op <- y5_init_diags_modalities_df
y5_init_diag_outcome_op <-y5_init_treat_groups_list[[4]]
y5_init_treat_mod_op <- y5_init_modalities_df

y5_m3_book_op <- y5_m3_treat_groups_list[[1]]
y5_m3_FU_op <- y5_m3_treat_groups_list[[2]]
y5_m3_diag_mod_op <- y5_m3_diags_modalities_df
y5_m3_diag_outcome_op <- y5_m3_treat_groups_list[[5]]
y5_m3_treat_mod_op <- y5_m3_modalities_df

y5_m12_book_op <- y5_m12_treat_groups_list[[1]]
y5_m12_FU_op <- y5_m12_treat_groups_list[[2]]
y5_m12_diag_mod_op <- y5_m12_diags_modalities_df
y5_m12_diag_outcome_op <- y5_m12_treat_groups_list[[5]]
y5_m12_treat_mod_op <- y5_m12_modalities_df

y5_m24_book_op <- y5_m24_treat_groups_list[[1]]
y5_m24_FU_op <- y5_m24_treat_groups_list[[2]]
y5_m24_diag_mod_op <- y5_m24_diags_modalities_df
y5_m24_diag_outcome_op <- y5_m24_treat_groups_list[[5]]
y5_m24_treat_mod_op <- y5_m24_modalities_df

## Exporting defined objects using output function

excel_output(
  paste0(here(),"/data/model_outputs/y5_outputs.xlsx"),
  list(
    y5_uptake_pop_op = y5_uptake_pop_op,
    y5_pop_smoke_op = y5_pop_smoke_op,
    y5_lhc_book_op = y5_lhc_book_op,
    y5_lhc_outcome_op = y5_lhc_outcome_op,
    y5_ct_book_op = y5_ct_book_op,
    y5_ct_outcome_op = y5_ct_outcome_op,
    y5_ct_neg_outcome_op = y5_ct_neg_outcome_op,
    y5_init_FU_op = y5_init_FU_op,
    y5_init_diag_mod_op = y5_init_diag_mod_op,
    y5_init_diag_outcome_op = y5_init_diag_outcome_op,
    y5_init_treat_mod_op = y5_init_treat_mod_op,
    y5_m3_book_op = y5_m3_book_op,
    y5_m3_FU_op = y5_m3_FU_op,
    y5_m3_diag_mod_op = y5_m3_diag_mod_op,
    y5_m3_diag_outcome_op = y5_m3_diag_outcome_op,
    y5_m3_treat_mod_op = y5_m3_treat_mod_op,
    y5_m12_book_op = y5_m12_book_op,
    y5_m12_FU_op = y5_m12_FU_op,
    y5_m12_diag_mod_op = y5_m12_diag_mod_op,
    y5_m12_diag_outcome_op = y5_m12_diag_outcome_op,
    y5_m12_treat_mod_op = y5_m12_treat_mod_op,
    y5_m24_book_op = y5_m24_book_op,
    y5_m24_FU_op = y5_m24_FU_op,
    y5_m24_diag_mod_op = y5_m24_diag_mod_op,
    y5_m24_diag_outcome_op = y5_m24_diag_outcome_op,
    y5_m24_treat_mod_op = y5_m24_treat_mod_op
  ),
  overwrite = TRUE
)
