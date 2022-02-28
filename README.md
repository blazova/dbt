# dbt

Transformation layer sitting on top of the data platform (being it Snowflake, AWS, Databricks) and takes care of tranformation, quality and validation. 

Transofrmations and their rdependencies (lineage) are represented by DAGs.

Language used in the development environment: SQL and/or Jinja (python based, used in dbt to write functional SQL, docs [here](https://jinja.palletsprojects.com/en/3.0.x/templates/), jinja parser [here](https://cryptic-cliffs-32040.herokuapp.com/)). There are three Jinja delimiters to be aware of in Jinja:

- `{% … %}` for statements. These perform any function programming such as setting a variable or starting a for loop.

- `{{ … }}` expressions. These will print text to the rendered file. In most cases in dbt, this will compile your Jinja to pure SQL.

- `{# … #}` for comments. This allows us to document our code inline. This will not be rendered in the pure SQL that you create when you run dbt compile or dbt run.


## Goal and example case of this project:

Modelling tables `dim_customers`  and `fct_orders` that uses other modelled staging views - `stg_customers`, `stg_orders`, and `stg_payments`. 
Despite the popular modelling techniques such as Star Schema, Kimball or Data Vault, Dbt's first approach is denormalized (agile) modelling that 
allows for a better readability and optimises time to deliver reports to the business (thanks to the modern technologies allowing for a very 
cheap storage and exceptional computing power).

![image](https://user-images.githubusercontent.com/39126832/149541428-18bf8ee5-d9b9-4813-82ff-80787966601e.png)


## My personal setup used for this project:

1. My personal Heroku app hosting a PostgreSQL database
2. Sample data from dbt loaded from s3 living in the above mentioned Postgres db (using PGAdmin and cli)

http://dbt-tutorial-public.s3-us-west-2.amazonaws.com/jaffle_shop_orders.csv

http://dbt-tutorial-public.s3-us-west-2.amazonaws.com/jaffle_shop_customers.csv

http://dbt-tutorial-public.s3-us-west-2.amazonaws.com/stripe_payments.csv

3. Git integration with the dbt cloud service

4. Data modelling, testign and documentation directly in dbt cloud (1 model per 1 output table)


## dbt Development

- `dbt run`
- `dbt test`
- `dbt test --select test_type:generic` to run only generic tests in your project.
- `dbt test --select test_type:singular`
- `dbt docs generate`
- `dbt source freshness`

## Testing:

`src_jaffle_shop.yml` source configuration + source tests

`stg_jaffle_shop.yml` generic model tests

`tests/assert_positive_total_for_payments.sql` singular table test



More documentation on the project's [wiki](https://github.com/blazova/dbt/wiki)

Official dbt course [here](https://courses.getdbt.com/courses/take/fundamentals/lessons/30210802-welcome)
