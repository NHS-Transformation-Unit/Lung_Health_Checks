
## Creating df output function

excel_output <- function(file_path, df_list, overwrite = FALSE) {
  wb <- createWorkbook()
  

  for (i in seq_along(df_list)) {
    df_name <- names(df_list)[i]
    df <- df_list[[i]]
    
    addWorksheet(wb, sheetName = df_name)
    
    writeData(wb, sheet = df_name, x = df)
  }
  
  saveWorkbook(wb, file_path, overwrite = overwrite)
}
