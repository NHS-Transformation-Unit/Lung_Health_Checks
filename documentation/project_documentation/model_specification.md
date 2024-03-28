<img src="../../images/TU_logo_large.png" alt="TU logo" width="200" align="right"/>

<br/>

# Model Specification
***

## Summary Description
This specification provides an overview of the modelling requirements for a demand and capacity model for the Lung Health Checks pathway across West Midlands Cancer Alliance. The model is required to describe how patients flow across the _proposed pathway_ and the resources required at each stage to enable this. This specification contains:

* __Model Structure__: How the model is structured and the model objects that are created to enable this.
* __Model Parameters__: The parameters for running the model such as the modelling period, capacity assumptions and uptake rates.
* __Model Outputs__: Requirements for the output metrics of the model and the granularity required.
* __Roles and Responsibilities__: The responsibilities for scoping, building and assuring the model.
* __Milestones__: The milestones and completion dates for delivering the model.

## Model Structure

### Pathway
The model will be based of the pathway:
<img src="../../images/lhc_pathway-Feedback_Pathway.drawio.svg" alt="LHC Pathway"/>

### Construction
The model will be probabilistic so that each model run will determine the movement of a patient across the pathway based on the probabilities of an outcome at each event of the pathway. Through running the model multiple times this will provide a range of outcomes. 

## Model Parameters

### Modelling Period
The initial modelling period will be for patients invited for a Lung Health Check during the 2024/25 financial year.

### Model Inputs
The inputs to the model will be derived from relevant datasets provided by West Midlands Cancer Alliance or by relevant key stakeholders. These inputs will take the form of probabilities to model an individual patient to an outcome at each stage of the pathway. The latest version of these will be available to view in the `data/config_inputs/lhc_config_inputs.xlsx` file. Inputs from this config file are read into the model and assigned to relevant assumptions in the `src/config` folder.

### Model Outputs
The model outputs will be represented in an `model_outputs.html` file created via a `model_outputs.rmd`script. This will contain:

* Activity numbers at each stage of the pathway
* The capacity required at each stage of the pathway to deliver the activity.
* Distribution of the activity and capacity requirements from the multiple model runs.

## Roles and Responsibilities
The roles and responsibilities of team members will be:

* [Andy Wilson](https://github.com/ASW-Analyst) - Delivery Lead: Andy will have responsibility for the delivery of the model and its associated outputs. This will include constructing model objects and assurance.

* [Elliot Royle](https://github.com/elliotroyle) - Associate Consultant Analyst: Elliot will have responsibility for constructing components of the model and developing the related model documentation.

* Charlotte Griffiths - TU Subject Matter Expert: Charlotte will provide subject matter expertise in reviewing the model outputs and assurance in the flow of the pathway.

## Timelines
The timelines for this project are:

| Task                              | Date             |
|:----------------------------------|:-----------------|
| Commencement                      | Thursday 29/02/2024 |
| Confirm pathway model             | Monday 04/03/2024   |
| Confirm constraints and requirements | Monday 04/03/2024 |
| Confirm assumptions required      | Thursday 07/03/2024 |
| Agree modelling parameters        | Tuesday 12/03/2024  |
| Complete input and config scripts | Tuesday 12/03/2024  |
| Complete modelling scripts        | Tuesday 19/03/2024  |
| Complete model output scripts     | Monday 25/03/2024   |
| Share final model deliverables    | Thursday 28/03/2024 |

