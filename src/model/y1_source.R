# Running of Y1 script to populate environment for development

## Packages

source(paste0(here(),"/src/requirements/packages.R"))

## Config (input parameters and assumptions)

source(paste0(here(),"/src/config/input_parameters.R"))
source(paste0(here(),"/src/config/assumptions/assumptions_population.R"))
source(paste0(here(),"/src/config/assumptions/assumptions_lhc.R"))
source(paste0(here(),"/src/config/assumptions/assumptions_ct.R"))
source(paste0(here(),"/src/config/assumptions/assumptions_treatments_initial.R"))
source(paste0(here(),"/src/config/assumptions/assumptions_treatments_m3.R")) # Updated
source(paste0(here(),"/src/config/assumptions/assumptions_treatments_m12.R")) # Updated
source(paste0(here(),"/src/config/assumptions/assumptions_treatments_m24.R")) # Updated

## Functions

source(paste0(here(),"/src/model/functions/population.R"))
source(paste0(here(),"/src/model/functions/lhc.R"))
source(paste0(here(),"/src/model/functions/ct.R"))
source(paste0(here(),"/src/model/functions/initial_treatment.R"))
source(paste0(here(),"/src/model/functions/initial_diagnostics.R"))
source(paste0(here(),"/src/model/functions/m3_treatment.R"))
source(paste0(here(),"/src/model/functions/m3_diagnostics.R"))
source(paste0(here(),"/src/model/functions/m12_treatment.R"))
source(paste0(here(),"/src/model/functions/m12_diagnostics.R"))
source(paste0(here(),"/src/model/functions/m24_treatment.R"))
source(paste0(here(),"/src/model/functions/m24_diagnostics.R"))

## Model

source(paste0(here(),"/src/model/y1_1_pop.R"))
source(paste0(here(),"/src/model/y1_2_lhc.R"))
source(paste0(here(),"/src/model/y1_3_ct.R"))
source(paste0(here(),"/src/model/y1_4_init_treat.R"))
source(paste0(here(),"/src/model/y1_5_init_diags.R"))
source(paste0(here(),"/src/model/y1_6_m3_treat.R"))
source(paste0(here(),"/src/model/y1_7_m3_diags.R"))
source(paste0(here(),"/src/model/y1_8_m12_treat.R"))
source(paste0(here(),"/src/model/y1_9_m12_diags.R"))
source(paste0(here(),"/src/model/y1_10_m24_treat.R"))
source(paste0(here(),"/src/model/y1_11_m24_diags.R"))

## Exporting all sheets to .csv

source(paste0(here(),"/src/outputs/y1_model_outputs.R"))
