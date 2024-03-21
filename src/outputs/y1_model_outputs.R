# Exporting all Y1 lists to a single .csv file --------------------------------

export_lists_fct <- function(file_path, ...) {
  wb <- createWorkbook()
  for (i in seq_along(list(...))) {
    sheet_name <- paste0("Sheet", i)
    addWorksheet(wb, sheet_name)
    writeData(wb, sheet = sheet_name, x = list(...)[[i]])
  }
  saveWorkbook(wb, file_path, overwrite = TRUE)
}


export_lists_fct(paste0(here(),"/data/model_outputs/Y1/y1_model_outputs.csv",
                        y1_pop_list,
                        y1_lhc_list,
                        y1_ct_list,
                        y1_init_treat_groups_list,
                        y1_init_diag_list,
                        y1_m3_treat_groups_list,
                        y1_m3_diag_list,
                        y1_m12_treat_groups_list,
                        y1_m12_diag_list,
                        y1_m24_treat_groups_list,
                        y1_m24_diag_list
                        ))