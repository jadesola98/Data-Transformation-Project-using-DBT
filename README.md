
# A DBT(DATA-BUILD-TOOL) Project

In this project I explored DBT in other to understand the nitty gritty and features of dbt. I setup my cloud data platform - snowflake, installed dbt using pip, performed basic transformation in the staging database and modelled a few tables in the warehouse.




## Tools
* snowflake
* DBT 
* SQL



## setup snowflake environment
* created roles, databases, schemas, datawarehouse and granted necessary permissions. The query used can be found in full_script.sql

* ingested data into the raw database
the data ingested was hardcoded. the query used can be found in full_script.sql

## installed/ setup dbt environment
* created a folder for the project

* created a virtual environment for my dbt project
```bash
python -m venv dbt-env
```     
* activated the environment
```bash      
dbt-env/scripts/activate
```
* installed dbt

N.B: I used the snowflake adapter because I am working with snowflake database

```bash
pip install dbt-snowflake
```
* Initialized dbt project

created a new folder

initialized dbt project in new folder

```bash
dbt init [foldername]
```

* configured profile for dbt project by inputting details that were prompted

dev credentials were used as default configuration

prod credentials were configured later in the profile.yml file 

## Build project
* created two folders, one for staging (staging) and the other for warehouse and reporting (mart)
* created folders for the different schemas in the staging folder
in each schema folder I declared sources in yaml files(src_fandango.yml & src_avengers.yml) for the schemas
* configured materialization and schema for staging, warehouse and reporting in dbt_project.yml file
* created a custom schema by using the macro "generate_schema_name"
* created staging models by referencing sources: 
performed basic transformations such as creating id columns, changing data types, harmonizing the name of columns, splitting columns e.t.c
* created warehouse and reporting models by referencing staging models
* editted database configuration in source files in other to deploy models in development environment to production environment
* deployed project to production environment
* created singular test and added it to test file
* created generic test to test for unique id columns and empty name columns by adding the test it to schema.yml file 
* created custom test to check if values in year columns are valid by creating a macro and adding it to the schema.yml file 
* generated documentation for project

 

## dbt commands used in the project

* deactivate to deactivate virtual environment
* dbt --version  check for version of dbt
* dbt debug to validate connection
* dbt clean clears out target file
* dbt run -s <name of models> to run specific models
* dbt run -s +<name of model> to run a model and all its dependencies
* dbt docs generate to generate documentation
* dbt dbt serve to visulize the documentation in the website
* dbt build to deploy the project sequentially



