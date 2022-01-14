# dbt

Transformation layer sitting on top of the data platform (being it Snowflake, AWS, Databricks) and takes care of tranformation, quality and validation. 

Transofrmations and their rdependencies (lineage) are represented by DAGs.

Language used in the development environment: SQL and/or Jinja

![image](https://user-images.githubusercontent.com/39126832/149541428-18bf8ee5-d9b9-4813-82ff-80787966601e.png)



## Commands:

dbt run

dbt test

dbt docs generate


## Connecting to different DWHs 

Documentation [here](https://docs.getdbt.com/docs/dbt-cloud/cloud-configuring-dbt-cloud/connecting-your-database)

Source = official course @dbt [here](https://courses.getdbt.com/courses/take/fundamentals/lessons/30210802-welcome)
