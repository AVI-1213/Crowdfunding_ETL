# CROWDFUNDING ETL PROJECT

In this project, we are building an ETL pipeline using Python, Pandas, and either Python dictionary methods or regular expressions. 
Our goal is to extract and transform crowdfunding data, create CSV files, design an ERD, define a table schema, and load the data into a PostgreSQL database.

## High-Level Tasks
- Create the Category and Subcategory DataFrames
- Create the Campaign DataFrame
- Create the Contacts DataFrame
- Create the Crowdfunding Database

## Create the Category and Subcategory DataFrames
1. We will extract and transform the `crowdfunding.xlsx` data to create a Category DataFrame with the following columns:
   - `category_id`, `category_name`, and other relevant columns
  
   <img width="190" alt="category_DataFrame" src="https://github.com/AVI-1213/Crowdfunding_ETL/assets/156638175/fe8efa76-cc63-4354-8409-7ef51a2212ec">

   

2. Next, we will export the Category DataFrame as `category.csv` and save it to our GitHub repository.
3. Then,we will extract and transform the `crowdfunding.xlsx` data to create a Subcategory DataFrame with the following columns:
   - `subcategory_id`, `subcategory_name`, `category_id`, and other relevant columns.
<img width="250" alt="subcategory_DataFrame" src="https://github.com/AVI-1213/Crowdfunding_ETL/assets/156638175/357b9306-d132-4034-aa1e-07911d57461e">


## Create the Campaign DataFrame
We will extract and transform the `crowdfunding.xlsx` data to create a Campaign DataFrame with the following columns:
- `cf_id`, `contact_id`, `company_name`
- `blurb` (renamed to `description`)
- `goal`, `pledged` (converted to float)
- `outcome`, `backers_count`, `country`, `currency`
- `launched_at` (renamed to `launch_date`, converted to datetime)
- `deadline` (renamed to `end_date`, converted to datetime)
- `category_id` (matching `category_id` in Category DataFrame)
- `subcategory_id` (matching `subcategory_id` in Subcategory DataFrame)

<img width="1074" alt="campaign_DataFrame" src="https://github.com/AVI-1213/Crowdfunding_ETL/assets/156638175/31ff757e-c917-42e1-bbf0-9ac7970eaa21">

## Create the Contacts DataFrame
Using Python dictionary methods, we imported the `contacts.xlsx` file into a DataFrame, converted each row to a dictionary, 
extracted values using a list comprehension, and created a new DataFrame from the extracted data. 
We split the `name` column into `first_name` and `last_name` columns, cleaned the data, and exported the DataFrame as `contacts.csv`.


<img width="415" alt="contact_DataFrame_final" src="https://github.com/AVI-1213/Crowdfunding_ETL/assets/156638175/43f13fc9-2967-4ed8-b3cc-2fdbc637a770">


## Create the Crowdfunding Database
We inspected the four CSV files and sketched an ERD using QuickDBD. Here is the ERD image:
![QuickDBD_ER_Diagram](https://github.com/AVI-1213/Crowdfunding_ETL/assets/156638175/782a825d-536d-473f-9727-a96c7053ab16)



Based on the ERD, we created a table schema for each CSV file and saved the schema as `crowdfunding_db_schema.sql`. 
We then created a new PostgreSQL database named `crowdfunding_db`, created the tables in the correct order to handle foreign keys, 
verified the table creation with SELECT statements, and imported each CSV file into its corresponding SQL table. Finally, 
we verified that each table had the correct data with SELECT statements.

---
---








## Tools Used

- Python
- PostgreSql
- Pandas
- VS Code 


---
## Contributors

- [Avinash K]([link to my GitHub profile](https://github.com/AVI-1213))

- [Soumya]([link to my GitHub profile](https://github.com/soumyaranjanswaincan)
  
