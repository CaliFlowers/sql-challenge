# Navigating an employee databse with SQL



Structured Query Language (SQL) is an important tool in data analysis. Relational databases like the ones accessed through PostgreSQL are useful for the organization, cleaning, and engineering of large datasets. In this sense, SQL plays a role similar to Pandas dataframes 
although SQL functionality allows for filtering across multiple databasesthrough joins and subqueries. SQL databases can contain many tables that each hold vast quantities of data; and all of these tables can be accessed through relatatively simple programming .

Data Engineering, or the structuring and organization of data through proper manipulations, is one of the most underappreciated tasks pushed onto Data Analysts. SQL is excellent with this task., especially because of its utility with relational database systems. 
 Since "data normalization" tends to work best when data dependencies and transitivity are removed, often by splitting offending data into separate tables connected by common keys.Normal forms make manipulation and analysis of data easier. 
 
* [DATA ENGINEERING](#data-engineering)
* [SQL](#sql)
* [SQL ALCHEMY](#sql-alchemy)

## Data Engineering

*ERD

The first part of this example is the greation of an ERD connecting different tables and sketching out the relationships between them. This is a basic task of Data Engineering. SQL is difficult without a basic understanding of the relationships between related data tabls. ERDs provide signposts for where joins and subqueries can be made hence making intricate analyses possible with normalized data tables. A ERD is the basc task of the Data Engineer, along with designing normalized tables; and makes an SQL programmer's tasks infinitely simpler. 

*Relational Databases

It's hard to discuss SQL without first discussing the utlity of relational databases. A relational database can connect massive amounts of data contained in multiple tables as long as the tables can be linked thrpugh a set of shared "keys". This functionality is demonstrated in this activity
In order to normalize the employee data, it had to be split into six different tables. This would be a nightmare to sift through in a Pandas dataframe; but it's the exact problem Relational Databases are good at dealing with. 

## SQL

*Queries

As demonstrated by the several queries in this example, SQL queries can easily combine information
from multple tables based on shared keys; and are flexible enough to be used in many permutations. Many SQL programmers use Joins; some use Unions; others prefer Subqueries. These all accomplish the same result in combining columns from multiple tables. For this miniproject, most

*Aggregation

In addition, SQL allows the user to obtain descriptive statistics about data it obtains from a query. This exervise demonstrates such aggregations with the use of the COUNT function. Similar aggregation functions such as AVG, MIN, and MAX can be also be used when appropriate. For many basic data analyses, a simple SQL query can be sufficient to find substantial insights. 


## SQL Alchemy

*Limitations of SQL

SQL, however is limited in the types of statistical analyses it can perfrorm. It's useful for collecting, storing, and aggregating data; but data visualization and analysis options are limited. The second half of this example involves 
transferring the data from PostGRES to Jupyter Notebook where the extracted datacan be visualized through Python libraries, or subjected to further analysis.
An SQL-Python Interface  
SQL Alchemy is one way of combining SQL and Python. Simply put, SQL Alchemy is a library that connects SQL engines to Jupyter Notrbook in such a way that 
SQL queries on an SQL database hosted in a SQL engine can be made from Jupyter notebook. This allows a Python programmer to benefit from the flexible functionality of SQL without sacrificing the functionality of Python libraries. 

*Object Relation Mapping (ORM)

Since most programmers have worked with SQL databases, Object Relation Mapping is a technique that allows SQL queries to be made from the medium of another programming language SQLAlchemy is a Python example of a library that facilitates this procedure. This allows programmers to easily integrate their queries into SQL databases with a language with which they're already familiar. 

Familiarity with a langauge can make a big difference depending on what a programmer is trying to accomplish.
It's true that familiarity with SQL would render an ORM unecessary; but a dedicated Python Programmer may still prefer the integration of functionalities and simply mimicking SQL functionality with Python syntax.  

*Insights

It might be helpful to point out that manipulating the data directly on Jupyter Notebook alowed for the visualization of salary data in this hypothetical company on two plots. 
Plot A is a histogram showing the distribution of salaries for all employees in this company; Plot B is a bar chart showing the mean salary for each job title in the organization. Most interestingly, Plot A shows a wide range of employee salaries; while Plot B suggests the mean salaryhovers around the mid-50,000 range regardless of job title.This ibservation is not one which can be easily made using data manipulaion in a pandas dataframe alone; but neither can it be said that an SQL database could have made this insight possible without data visualization. Whatever can be said of either SQL or Python, both work better in combination.  SQL works better for reading the poetry of data; Python is more effective in playing the notes to the music that will make the data sing. 


