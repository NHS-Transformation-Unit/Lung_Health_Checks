
# Load file from data -----------------------------------------------------

input_file_name <- "lhc_config_inputs_v3_test.xlsx"

geography <- read_excel(paste0(here(),"/data/config_inputs/", input_file_name), sheet = "frontpage", range = "B11", col_names = FALSE)[[1]]
assumptions_pop <- read_excel(paste0(here(), "/data/config_inputs/", input_file_name), sheet = "population", range = "B2:I8")
assumptions_lhc <- read_excel(paste0(here(), "/data/config_inputs/", input_file_name), sheet = "lhc", range = "B2:I7")
assumptions_ct <- read_excel(paste0(here(), "/data/config_inputs/", input_file_name), sheet = "ct", range = "B2:I7")
assumptions_initial_diag <- read_excel(paste0(here(), "/data/config_inputs/", input_file_name), sheet = "initial_diag", range = "B2:I8")
assumptions_initial_treat <- read_excel(paste0(here(), "/data/config_inputs/", input_file_name), sheet = "initial_treat", range = "B2:I13")
assumptions_m3_diag <- read_excel(paste0(here(), "/data/config_inputs/", input_file_name), sheet = "m3_diag", range = "B2:I8")
assumptions_m3_treat <- read_excel(paste0(here(), "/data/config_inputs/", input_file_name), sheet = "m3_treat", range = "B2:I15")
assumptions_m12_diag <- read_excel(paste0(here(), "/data/config_inputs/", input_file_name), sheet = "m12_diag", range = "B2:I8")
assumptions_m12_treat <- read_excel(paste0(here(), "/data/config_inputs/", input_file_name), sheet = "m12_treat", range = "B2:I16")
assumptions_m24_diag <- read_excel(paste0(here(), "/data/config_inputs/", input_file_name), sheet = "m24_diag", range = "B2:I8")
assumptions_m24_treat <- read_excel(paste0(here(), "/data/config_inputs/", input_file_name), sheet = "m24_treat", range = "B2:I16")
