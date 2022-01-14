# dbt

Transformation layer sitting on top of the data platform (being it Snowflake, AWS, Databricks) and takes care of tranformation, quality and validation. 

Transofrmations and their rdependencies (lineage) are represented by DAGs.

Language used in the development environment: SQL and/or Jinja

![image](https://user-images.githubusercontent.com/39126832/149541428-18bf8ee5-d9b9-4813-82ff-80787966601e.png)


## My personal setup used for this project:

1. My personal Heroku app hosting a PostgreSQL database
2. Sample data from dbt loaded from s3 living in the above mentioned Postgres db

http://dbt-tutorial-public.s3-us-west-2.amazonaws.com/jaffle_shop_orders.csv

http://dbt-tutorial-public.s3-us-west-2.amazonaws.com/jaffle_shop_customers.csv

http://dbt-tutorial-public.s3-us-west-2.amazonaws.com/stripe_payments.csv

3. Git integration with the dbt cloud service

4. Data modelling directly in dbt cloud (1 model per 1 output table)


## Commands:

dbt run

dbt test

dbt docs generate


## Connecting to different DWHs 

Documentation [here](https://docs.getdbt.com/docs/dbt-cloud/cloud-configuring-dbt-cloud/connecting-your-database)

Source = official course @dbt [here](https://courses.getdbt.com/courses/take/fundamentals/lessons/30210802-welcome)
