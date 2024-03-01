
# Load file from data -----------------------------------------------------

input_file_name <- "lhc_config_inputs_test.xlsx"

geography <- read_excel(paste0(here(),"/data/config_inputs/", input_file_name), sheet = "frontpage", range = "B11", col_names = FALSE)[[1]]
assumptions_pop <- read_excel(paste0(here(), "/data/config_inputs/", input_file_name), sheet = "population", range = "B2:E5")
assumptions_lhc <- read_excel(paste0(here(), "/data/config_inputs/", input_file_name), sheet = "lhc", range = "B2:E5")
assumptions_ct <- read_excel(paste0(here(), "/data/config_inputs/", input_file_name), sheet = "ct", range = "B2:E8")
assumptions_initial_diag <- read_excel(paste0(here(), "/data/config_inputs/", input_file_name), sheet = "initial_diag", range = "B2:E6")
assumptions_initial_treat <- read_excel(paste0(here(), "/data/config_inputs/", input_file_name), sheet = "initial_treat", range = "B2:E11")
assumptions_m3_diag <- read_excel(paste0(here(), "/data/config_inputs/", input_file_name), sheet = "m3_diag", range = "B2:E6")
assumptions_m3_treat <- read_excel(paste0(here(), "/data/config_inputs/", input_file_name), sheet = "m3_treat", range = "B2:E11")
assumptions_m12_diag <- read_excel(paste0(here(), "/data/config_inputs/", input_file_name), sheet = "m12_diag", range = "B2:E6")
assumptions_m12_treat <- read_excel(paste0(here(), "/data/config_inputs/", input_file_name), sheet = "m12_treat", range = "B2:E11")
assumptions_m24_diag <- read_excel(paste0(here(), "/data/config_inputs/", input_file_name), sheet = "m24_diag", range = "B2:E6")
assumptions_m24_treat <- read_excel(paste0(here(), "/data/config_inputs/", input_file_name), sheet = "m24_treat", range = "B2:E11")
