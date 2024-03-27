
# Y1 model output creation

install.packages("writexl")
library(writexl)

## Defining objects to be outputted for Y1

y1_uptake_pop_op <- y2_screened_input_df
#y1_smoking_cess_op <- 

y1_lhc_book_op <- y1_lhc_list[[3]]
y1_lhc_outcome_op <- y1_lhc_list[[4]]

y1_ct_book_op <- y1_ct_list[[2]]
y1_ct_outcome_op <- y1_ct_list[[3]]
y1_ct_neg_outcome_op <- y1_ct_list[[8]]

y1_init_FU_op <- y1_init_treat_groups_list[[1]]
y1_init_diag_mod_op <- y1_init_diags_modalities_df
y1_init_diag_outcome_op <-y1_init_treat_groups_list[[4]]
y1_init_treat_mod_op <- y1_init_modalities_df

y1_m3_book_op <- y1_m3_treat_groups_list[[1]]
y1_m3_FU_op <- y1_m3_treat_groups_list[[2]]
y1_m3_diag_mod_op <- y1_m3_diags_modalities_df
y1_m3_diag_outcome_op <- y1_m3_treat_groups_list[[5]]
y1_m3_treat_mod_op <- y1_m3_modalities_df

y1_m12_book_op <- y1_m12_treat_groups_list[[1]]
y1_m12_FU_op <- y1_m12_treat_groups_list[[2]]
y1_m12_diag_mod_op <- y1_m12_diags_modalities_df
y1_m12_diag_outcome_op <- y1_m12_treat_groups_list[[5]]
y1_m12_treat_mod_op <- y1_m12_modalities_df

y1_m24_book_op <- y1_m24_treat_groups_list[[1]]
y1_m24_FU_op <- y1_m24_treat_groups_list[[2]]
y1_m24_diag_mod_op <- y1_m24_diags_modalities_df
y1_m24_diag_outcome_op <- y1_m24_treat_groups_list[[5]]
y1_m24_treat_mod_op <- y1_m24_modalities_df

## Exporting defined objects using output function

excel_output(paste0(here(),"/src/outputs/y1/y1_outputs.xlsx",
                    df1 = y1_uptake_pop_op,
                    df2 = y1_lhc_book_op,
                    df3 = y1_lhc_outcome_op,
                    df4 = y1_ct_book_op,
                    df5 = y1_ct_outcome_op,
                    df6 = y1_ct_neg_outcome_op,
                    df7 = y1_init_FU_op,
                    df8 = y1_init_diag_mod_op,
                    df9 = y1_init_diag_outcome_op,
                    df10 = y1_init_treat_mod_op,
                    df11 = y1_m3_book_op,
                    df12 = y1_m3_FU_op,
                    df13 = y1_m3_diag_mod_op,
                    df14 = y1_m3_diag_outcome_op,
                    df15 = y1_m3_treat_mod_op,
                    df16 = y1_m12_book_op,
                    df17 = y1_m12_FU_op,
                    df18 = y1_m12_diag_mod_op,
                    df19 = y1_m12_diag_outcome_op,
                    df20 = y1_m12_treat_mod_op,
                    df21 = y1_m24_book_op,
                    df22 = y1_m24_FU_op,
                    df23 = y1_m24_diag_mod_op,
                    df24 = y1_m24_diag_outcome_op,
                    df25 = y1_m24_treat_mod_op,
                    ))

