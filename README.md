# dbt

Transform layer sitting on the data platform (being it Snowflake, AWS, Databricks) and takes care of tranformation, quality and validation. Represents transofrmations in form of DAGs and auto-creates documentation on top of transfomartions.


![image](https://user-images.githubusercontent.com/39126832/149541428-18bf8ee5-d9b9-4813-82ff-80787966601e.png)



## Commands:

- `dbt run`
- `dbt test`
- `dbt test --select test_type:generic` to run only generic tests in your project.
- `dbt test --select test_type:singular`
- `dbt docs generate`
- `dbt source freshness`


More documentation on the project's [wiki](https://github.com/blazova/dbt/wiki)

Official dbt course [here](https://courses.getdbt.com/courses/take/fundamentals/lessons/30210802-welcome)
