# SQL Database and Queries
Structured Query Language (SQL) a language used to ask questions of data and receive answers. It is made for handling large amounts of data and allows us to Extract, Transform, and Load data into databases(ETL).

PostgreSQL is (1 flavor of) an object-relational database that uses SQL.
PGAdmin is a management tool that gives access to the databases and from which one can query the data (only works with PostgreSQL).

Entity Relationship Diagram (ERD) is a kind of flow chart that spotlights the different tables and their relationships to other tables via primary keys, foreign kets, and data types for the various columns. It provides a big-picture look at the data.

3 types of ERDs:
1. conceptual
2. logical
3. physical

Database components: Entities (tables) and data (attributes).

A map of the database is also called a Database Diagram (DBD) and is a way of 'modeling' data.

Reading data from a table using SELECT 
Populate data into DB with INSERT INTO

Postgress requires column names with foreign/exotic characters to be in quotes

## Best practice in SQL:
Tables should have a PRIMARY KEY to identify unique items in dataset
Limit varchars to save memory
Don't store data more than once
Maximize memory efficiency**
Add timestamps to data updating
Use integers to indentify data (not strings) to speed up query time

CRUD:
Create
Read
Update (change)
Delete

Joins, 5 kinds:
Inner
Outer
Right
Left**
cross - matches every row from left table with every row of right table (not common)

Primary Keys - 

Foreign Keys - a column in a secondary table that references (and depends upon) a primary key in another table

To avoid cluster keys, create unique ID int column***
