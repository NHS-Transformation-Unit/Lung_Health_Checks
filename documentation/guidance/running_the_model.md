# Running the Model Guidance

## Introduction
There are several ways in which the Lung Health Checks model can be ran. This guidance provides an overview of the different approaches and the stages in which these need to be undertaken. There are three ways in which the model can be ran:

* Knitting the `lhc_model_output.Rmd` file within the `src/outputs` folder will run the model and create a summary of the key model outputs across the five years.
* Running the script `model_pipeline.R` within the `src` folder will run the model, create the visualisations and write the model outputs into a series of excel files.
* Running the individual modelling scripts to load the assumptions, process these and then run each stage of the model in turn. This is more labour intensive but is useful for understanding the mechanics of the model.

<br/>

## Amending Model Assumptions
All of the model assumptions are to be inputted via the `lhc_confic_inputs_vx.xlsx` excel file. This file contains a separate tab for each section of model assumptions such as the population, ct scan outcomes and treatment modalities. This file then needs to be saved within the `data/config_inputs` folder. The name of this file should be the same as the one within the `src/load/load_inputs_config.R` script. This script loads the excel file with the assumptions for use in the model.

<br/>

## Packages
As the model is built and ran within the R programming language it will require dependent packages to be installed by the user. These packages will only require installing once. Please ensure that these packages are installed prior to running the model. This can be undertaken by using the `install.packages()` command within the console. For example `install.packages(scales)` will install the `scales` package.

<br/>

## Knitting the Model Outputs Document
The file `lhc_model_output.Rmd` will run the model and create the necessary summary table and visualisations for each stage of the model. The output of this is an .`html` file that can be viewed and shared with others. To create this file ensure that the latest version of the assumptions is saved within the `data/config_inputs` folder. The outputs can be created by **knitting** the document. This can be achieved by either clicking the `Knit` button or by using `Ctrl+Shift+K` command. The output will then render and load the knitted document into a viewing window. The output will also be available within the `src/output` folder as an `.html` file.

<br/>

## Running the Model Pipeline
The file `model_pipeline.R` contained within the `src` file will source each of the `lhc_model.R`, `visulations_run.R`, `tables_run.R` and `outputs_run.R`. This will run the model, create all visuals, create all tables and then export all the model objects to a series of Excel files. Simply, run the file to run the pipeline from start to finish.

## Running the Model in Stages
The model can be ran in stages. This will take longer and requires the model objects to be created in order. However, this will be helpful for the user to understand how the model functions. The order for running is:

1. Run the `src/requirements/packages.R` script. This will load all required packages into the library.
2. Run the `input_parameters.R` and `tu_ggplot_themes.R` scripts in the `config` folder. This will load the model parameters to determine how many trials to run and the random seed to set. The ggplot themes file will ensure that the appropriate themes for creating the visualisations are available in the environment.
3. Run the `src/load/load_inputs_config.R` script to load the assumptions into the evironment from the excel spreadsheet.
4. Run each of the `assumptions_*.R` files within the `src/config/assumptions` folder. This will then assign each of the assumptions from the excel file to the appropriate assumption within the model logic.
5. Run each of the `.R` scripts within the `src/model/functions` folder. This will load all of the functions required for the model to run into the environment.
6. Open the `y1` folder within `src/model` and run the `y1_*.R` files in turn. They contain a number to show the order in which they should be run. For example, run `y1_1_pop.R` first to create the initial population of patients who are invited to the Lung Health Checks. The script `y1_source.R` is a source file that runs each of these files in one go rather than individually.
7. Repeat this process for each of the model years in the folders `y2`, `y3`, etc.
8. If you wish to create the visualisations for the model then run each of the r scripts within the `src/visualisation/function` folder. This will create the functions necessary to generate the model output visuals.
9. You can then run the `y1_visuals.R`, `y2_visuals.R` etc. in turn to create the visuals for each year.
10. If you wish to create the summary tables, run the files within the `src/visualisations/tables` folder. Run them in turn starting with the first year `y1_tables.R`.
