<img src="images/TU_logo_large.png" alt="TU logo" width="200" align="right"/>

<img src="images/wmca-logo.svg" alt="TU logo" width="200" align="right"/>

<br/>

<br/>

<br/>

# Lung Health Checks
This repository holds the codebase for modelling the demand and capacity requirements for Lung Health Check screening. There is an ambition for all eligible patients aged 55 - 74 years old with a history of smoking to be offered a lung health check by 2029, more information is available [here](https://www.nhs.uk/conditions/lung-health-checks/).

<br/>

## Using the Repository
The repository can be cloned to model the demand and capacity for diagnostic investigations and therapies for treating lung cancer patients. The section below detailing the structure of the repository explains how the model functions and where the parameters of the model can be amended for the user. The model has been developed in the R programming language so of particular note the user will require the packages listed within the `packages.R` script within the `requirements` folder to be installed.

### Running the Model
The model can be run in one of three ways:

1. **Knitting** the `lhc_model_output.Rmd` file within the `src/outputs` folder. This will run the model and render the summary outputs in an `.html` format.
2. Running the `model_pipeline.R` file within the `src` folder. This will run the model, create the visuals and tables, and write the model objects to a series of excel files.
3. Running the model files in turn by loading the assumptions, processing these and then running each model script. This is helpful to understand the structure of the model.

More information on how to run the model is available in the `documentation/guidance/running_the_model.md` file.

<br/>

## Repository Structure

The current structure of the repository is detailed below:

``` plaintext

├───data
    ├───config_inputs
    ├───external
    ├───model_outputs
    └───reference
├───documentation
    ├───project_documentation
    └───guidance
├───images
└───src
    ├───config
      └───assumtpions
    ├───load
    ├───model
        ├───functions
        ├───y1
        ├───y2
        ├───y3
        ├───y4
        └───y5
    ├───outputs
        └───functions
    ├───requirements
    └───visualisation
        ├───functions
        └───tables
    
```

<br/>

### `data`
This folder will contain any relevant data files or external data that is to be utilised during the construction of the model. It also contains the model inputs configuration file for loading the user input assumptions into the model. Extracts of the model outputs saved to excel will also be saved here.

### `documentation`
This folder contain the project documentation including the model specification and guidance on how to use the model.

### `images`
This folder contains all images used in the outputs or repository such as the TU logo and the flow-chart mapping the movement of patients across the lung health check pathway.

### `src`
All code is stored within the `src` folder. This is then divided into:

1. `config`: Files for configuring the model and the outputs. The model assumptions are stored within the `assumptions` folder, with the parameters that can be amended for running the model. Other parameters such as setting the seed within R and theme css files are also located here.
2. `load`: Scripts for loading any external data into the model will be saved here.
3. `model`: Scripts for modelling the movement of patients at each stage of the lung health check pathway are saved here.
4. `outputs`: Scripts for rendering the outputs of the model are saved within here.
5. `requirements`: Requirements for running the model and creating outputs such as the `packages.R` script are saved here.
6. `visualisation`: Scripts for producing visualisations of the modelled demand and outcomes at different points of the pathway are saved here to be used in the model outputs.

<br/>

## Lung Health Check Pathway
The diagram below shows the current version of the pathway that has been modelled:
<img src="images/lhc_pathway-Feedback_Pathway.drawio.svg" alt="LHC Pathway"/>

## Contributors

This repository has been created and developed by:
-   [Andy Wilson](https://github.com/ASW-Analyst)
-   [Elliot Royle](https://github.com/elliotroyle)
