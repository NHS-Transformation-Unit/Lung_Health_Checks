
# Y4 model output creation

## Defining objects to be outputted for Y4

y4_uptake_pop_op <- y5_screened_input_df

y4_pop_smoke_op <- y4_lhc_list[[8]]
y4_lhc_book_op <- y4_lhc_list[[3]]
y4_lhc_outcome_op <- y4_lhc_list[[4]]

y4_ct_book_op <- y4_ct_list[[2]]
y4_ct_outcome_op <- y4_ct_list[[3]]
y4_ct_neg_outcome_op <- y4_ct_list[[8]]

y4_init_FU_op <- y4_init_treat_groups_list[[1]]
y4_init_diag_mod_op <- y4_init_diags_modalities_df
y4_init_diag_outcome_op <-y4_init_treat_groups_list[[4]]
y4_init_treat_mod_op <- y4_init_modalities_df

y4_m3_book_op <- y4_m3_treat_groups_list[[1]]
y4_m3_FU_op <- y4_m3_treat_groups_list[[2]]
y4_m3_diag_mod_op <- y4_m3_diags_modalities_df
y4_m3_diag_outcome_op <- y4_m3_treat_groups_list[[5]]
y4_m3_treat_mod_op <- y4_m3_modalities_df

y4_m12_book_op <- y4_m12_treat_groups_list[[1]]
y4_m12_FU_op <- y4_m12_treat_groups_list[[2]]
y4_m12_diag_mod_op <- y4_m12_diags_modalities_df
y4_m12_diag_outcome_op <- y4_m12_treat_groups_list[[5]]
y4_m12_treat_mod_op <- y4_m12_modalities_df

y4_m24_book_op <- y4_m24_treat_groups_list[[1]]
y4_m24_FU_op <- y4_m24_treat_groups_list[[2]]
y4_m24_diag_mod_op <- y4_m24_diags_modalities_df
y4_m24_diag_outcome_op <- y4_m24_treat_groups_list[[5]]
y4_m24_treat_mod_op <- y4_m24_modalities_df

## Exporting defined objects using output function

excel_output(
  paste0(here(),"/data/model_outputs/y4_outputs.xlsx"),
  list(
    y4_uptake_pop_op = y4_uptake_pop_op,
    y4_pop_smoke_op = y4_pop_smoke_op,
    y4_lhc_book_op = y4_lhc_book_op,
    y4_lhc_outcome_op = y4_lhc_outcome_op,
    y4_ct_book_op = y4_ct_book_op,
    y4_ct_outcome_op = y4_ct_outcome_op,
    y4_ct_neg_outcome_op = y4_ct_neg_outcome_op,
    y4_init_FU_op = y4_init_FU_op,
    y4_init_diag_mod_op = y4_init_diag_mod_op,
    y4_init_diag_outcome_op = y4_init_diag_outcome_op,
    y4_init_treat_mod_op = y4_init_treat_mod_op,
    y4_m3_book_op = y4_m3_book_op,
    y4_m3_FU_op = y4_m3_FU_op,
    y4_m3_diag_mod_op = y4_m3_diag_mod_op,
    y4_m3_diag_outcome_op = y4_m3_diag_outcome_op,
    y4_m3_treat_mod_op = y4_m3_treat_mod_op,
    y4_m12_book_op = y4_m12_book_op,
    y4_m12_FU_op = y4_m12_FU_op,
    y4_m12_diag_mod_op = y4_m12_diag_mod_op,
    y4_m12_diag_outcome_op = y4_m12_diag_outcome_op,
    y4_m12_treat_mod_op = y4_m12_treat_mod_op,
    y4_m24_book_op = y4_m24_book_op,
    y4_m24_FU_op = y4_m24_FU_op,
    y4_m24_diag_mod_op = y4_m24_diag_mod_op,
    y4_m24_diag_outcome_op = y4_m24_diag_outcome_op,
    y4_m24_treat_mod_op = y4_m24_treat_mod_op
  ),
  overwrite = TRUE
)
