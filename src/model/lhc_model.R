
# Master script for running all yearly source scripts

library(here)

## Packages

source(paste0(here(),"/src/requirements/packages.R"))

## Loading inputs

source(paste0(here(),"/src/load/load_inputs_config.R"))

## Config - input parameters

source(paste0(here(),"/src/config/input_parameters.R"))

## Config - assumptions

source(paste0(here(),"/src/config/assumptions/assumptions_population.R"))
source(paste0(here(),"/src/config/assumptions/assumptions_lhc.R"))
source(paste0(here(),"/src/config/assumptions/assumptions_ct.R"))
source(paste0(here(),"/src/config/assumptions/assumptions_treatments_initial.R"))
source(paste0(here(),"/src/config/assumptions/assumptions_treatments_m3.R")) 
source(paste0(here(),"/src/config/assumptions/assumptions_treatments_m12.R")) 
source(paste0(here(),"/src/config/assumptions/assumptions_treatments_m24.R"))

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
source(paste0(here(),"/src/model/functions/incidental_summaries.R"))

## Model

source(paste0(here(),"/src/model/y1/y1_source.R"))
source(paste0(here(),"/src/model/y2/y2_source.R"))
source(paste0(here(),"/src/model/y3/y3_source.R"))
source(paste0(here(),"/src/model/y4/y4_source.R"))
source(paste0(here(),"/src/model/y5/y5_source.R"))
