
# Y2 model output creation

## Defining objects to be outputted for Y2

y2_pop_coverage_op <- y3_screened_input_df

y2_pop_smoke_op <- y2_lhc_list[[8]]
y2_lhc_book_op <- y2_lhc_list[[3]]
y2_lhc_outcome_op <- y2_lhc_list[[4]]

y2_ct_book_op <- y2_ct_list[[2]]
y2_ct_outcome_op <- y2_ct_list[[3]]
y2_ct_neg_outcome_op <- y2_ct_list[[8]]

y2_init_FU_op <- y2_init_treat_groups_list[[1]]
y2_init_diag_mod_op <- y2_init_diags_modalities_df
y2_init_diag_outcome_op <-y2_init_treat_groups_list[[4]]
y2_init_treat_mod_op <- y2_init_modalities_df
y2_init_inc_op <- y2_init_incidental_df

y2_m3_book_op <- y2_m3_treat_groups_list[[1]]
y2_m3_FU_op <- y2_m3_treat_groups_list[[2]]
y2_m3_diag_mod_op <- y2_m3_diags_modalities_df
y2_m3_diag_outcome_op <- y2_m3_treat_groups_list[[5]]
y2_m3_treat_mod_op <- y2_m3_modalities_df
y2_m3_inc_op <- y2_m3_incidental_df

y2_m12_book_op <- y2_m12_treat_groups_list[[1]]
y2_m12_FU_op <- y2_m12_treat_groups_list[[2]]
y2_m12_diag_mod_op <- y2_m12_diags_modalities_df
y2_m12_diag_outcome_op <- y2_m12_treat_groups_list[[5]]
y2_m12_treat_mod_op <- y2_m12_modalities_df
y2_m12_inc_op <- y2_m12_incidental_df

y2_m24_book_op <- y2_m24_treat_groups_list[[1]]
y2_m24_FU_op <- y2_m24_treat_groups_list[[2]]
y2_m24_diag_mod_op <- y2_m24_diags_modalities_df
y2_m24_diag_outcome_op <- y2_m24_treat_groups_list[[5]]
y2_m24_treat_mod_op <- y2_m24_modalities_df
y2_m24_inc_op <- y2_m24_incidental_df

## Exporting defined objects using output function

excel_output(
  paste0(here(),"/data/model_outputs/y2_outputs.xlsx"),
  list(
    y2_pop_coverage_op = y2_pop_coverage_op,
    y2_pop_smoke_op = y2_pop_smoke_op,
    y2_lhc_book_op = y2_lhc_book_op,
    y2_lhc_outcome_op = y2_lhc_outcome_op,
    y2_ct_book_op = y2_ct_book_op,
    y2_ct_outcome_op = y2_ct_outcome_op,
    y2_ct_neg_outcome_op = y2_ct_neg_outcome_op,
    y2_init_FU_op = y2_init_FU_op,
    y2_init_diag_mod_op = y2_init_diag_mod_op,
    y2_init_diag_outcome_op = y2_init_diag_outcome_op,
    y2_init_treat_mod_op = y2_init_treat_mod_op,
    y2_init_inc_op = y2_init_inc_op,
    y2_m3_book_op = y2_m3_book_op,
    y2_m3_FU_op = y2_m3_FU_op,
    y2_m3_diag_mod_op = y2_m3_diag_mod_op,
    y2_m3_diag_outcome_op = y2_m3_diag_outcome_op,
    y2_m3_treat_mod_op = y2_m3_treat_mod_op,
    y2_m3_inc_op = y2_m3_inc_op,
    y2_m12_book_op = y2_m12_book_op,
    y2_m12_FU_op = y2_m12_FU_op,
    y2_m12_diag_mod_op = y2_m12_diag_mod_op,
    y2_m12_diag_outcome_op = y2_m12_diag_outcome_op,
    y2_m12_treat_mod_op = y2_m12_treat_mod_op,
    y2_m12_inc_op = y2_m12_inc_op,
    y2_m24_book_op = y2_m24_book_op,
    y2_m24_FU_op = y2_m24_FU_op,
    y2_m24_diag_mod_op = y2_m24_diag_mod_op,
    y2_m24_diag_outcome_op = y2_m24_diag_outcome_op,
    y2_m24_treat_mod_op = y2_m24_treat_mod_op,
    y2_m24_inc_op = y2_m24_inc_op
  ),
  overwrite = TRUE
)
