
## Creating df output function

excel_output <- function(file_path, ...) {
  wb <- createWorkbook()
  
  for (i in 1:length(list(...))) {
    df_name <- names(list(...))[i]
    df <- list(...)[[i]]
    
    addWorksheet(wb, sheetName = df_name)
    
    writeData(wb, sheet = df_name, x = df)
  }
  
  saveWorkbook(wb, file_path)
}