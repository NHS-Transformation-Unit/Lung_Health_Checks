
# Loading of `here()` package for use in pulling all scripts

library(here)

# Master script for running all LHC modelling scripts

source(paste0(here(),"/src/model/lhc_model.R"))
source(paste0(here(),"/src/visualisation/visualisations_run.R"))
source(paste0(here(),"/src/visualisation/tables/tables_run.R"))
source(paste0(here(),"/src/outputs/outputs_run.R"))
