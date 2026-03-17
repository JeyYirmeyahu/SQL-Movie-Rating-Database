# 🎬Movie Rating Database Management System
A relational database project for managing movie ratings using MySQL.
## 📌 Project Overview
This project focuses on designing and implementing a relational database system to manage movie ratings. The system demonstrates key database concepts such as schema design, data insertion, and complex querying using MySQL workbench.
Core records managed by the database include:
•	Movies available in the system
•	Registered users who rate movies
•	Movie ratings provided by users
The goal is to transform raw movie rating data into a structured relational database that allows efficient storage, retrieval, and analysis of user rating behavior and movie popularity.
## ❗ Project Problem Statement
In our world today, entertainment companies often struggle to make data-driven decisions because their user and content data are stored in separate flat CSV files. These disconnected datasets make it difficult to perform meaningful analysis or answer important business questions.
For example:
a. Which genres are most popular among users in specific cities such as Abuja or Lagos?
b. How does movie age correlate with user satisfaction and ratings?
c. Which demographic groups are the most active reviewers?
When data exists only in spreadsheets, answering these questions requires time-consuming manual analysis and often produces unreliable insights.
## ✅ The Goal
The goal here is to address these challenges by designing and implementing a centralised MySQL database. This system transforms scattered CSV files into a relational database structure, enabling faster querying and deeper analysis of:

a. Audience behaviour

b. Movie popularity

c. Rating trends

d. Demographic engagement

This structured approach allows analysts to generate actionable insights from movie rating data.
## 🛠 Tools Used
The following are tools used for the implementation of this project:

a. MySQL Workbench

b. Microsoft Excel (CSV)
## 📂 Data Source
The raw dataset used for this project was originally created in Microsoft Excel and exported as CSV files.
These files were cleaned and structured before being imported into the MySQL Workbench.
The raw data used for this project can be found in the Excel folder of this repository.
## 🗄 Database Schema & ER Diagram
The system architecture uses a star-like schema to ensure data integrity and reduced redundancy.
The database consists of three main tables:
### 👤 Users Table
Stores demographic information about users who rate movies.
Fields include:

a. User ID

b. Age

c. Gender

d. Location
### 🎥 Movies Table
Contains information about movies available in the system.
Fields include:

a. Movie ID

b. Title

c. Release Year

d. Genre

e. Director
### ⭐ Ratings Table
Acts as a transactional bridge linking users to movies through their ratings.
Fields include:

a. Rating ID

b. User ID

c. Movie ID

d. Rating Value

e. Rating Date

This table connects the Users and Movies tables using foreign keys, allowing analysis of user behavior and movie popularity.
<img width="965" height="584" alt="image" src="https://github.com/user-attachments/assets/9314a106-2f07-482b-a13e-a90fe1665ac0" />
## 🔍 Key Queries Performed
A few SQL queries were written to explore the dataset and extract meaningful insights from the movie rating database. Below are a list of few:

a. Filtering users by age and location.

b. Using logical operators to find specific movie genres.

c. Sorting and pagination for data reporting.
## ⚙️ Implementation & Query Results
Below are the results of the business queries performed to extract insights.
### 🎯 Business Function
#### 1. Customer Insights / Segmentation (Find users older than 25 and Find female users from Abuja)
##### Goal: To understand the audience, location and specific groups to focus on more.

SELECT user_id, name, age FROM movieratingdb.`users table` WHERE age > 25;
<img width="923" height="547" alt="image" src="https://github.com/user-attachments/assets/887c3da5-7fb6-4943-9bb3-e78aa4ee221a" />

SELECT * FROM movieratingdb.`users table` WHERE gender = "Female" AND location = "Abuja Nigeria";
<img width="913" height="423" alt="image" src="https://github.com/user-attachments/assets/037aa15a-4da8-481b-9de3-5217844eab25" />

#### 2. Content Filtering / Catalog Management ( Movies released between 2000 and 2020, movies that are not Sci-Fi)
##### Goal: To to organize and recommend content

SELECT * FROM movieratingdb.`movies table` WHERE release_year BETWEEN 2000 AND 2020;
<img width="924" height="549" alt="image" src="https://github.com/user-attachments/assets/3527608a-528d-4eb3-b4ab-01337bd4dd37" />

SELECT * FROM movieratingdb.`movies table` WHERE genre <> 'Sci-Fi';
<img width="925" height="548" alt="image" src="https://github.com/user-attachments/assets/3de0e81a-6a6f-4ba7-aafa-fd2ef38e13c3" />

#### 3. Performance & Rating Analysis ( ratings ≥ 4)
##### Goal: To to organize and recommend content identify top-performing movies, and User satisfaction levels.

SELECT * FROM movieratingdb.`ratings table` WHERE rating_value >= 4;
<img width="915" height="552" alt="image" src="https://github.com/user-attachments/assets/67efa459-2efb-41e8-b8fd-5764605df8c9" />

#### 4. Quality Control (High Ratings Analysis)
##### Goal: Identify the "Top 3" highest-rated experiences to understand success patterns.

SELECT * FROM movieratingdb.`ratings table` ORDER BY rating_value DESC LIMIT 3;
<img width="920"  height="551" alt="image" src="https://github.com/user-attachments/assets/bfa261ed-743e-43e4-8d3b-137a71153e89" />

# 📈 Key Findings
The analysis revealed several insights:

1. Certain genres such as Action and Sci-Fi tend to receive the highest engagement.

2. A small number of users contribute a large portion of the total ratings.

3. Males in the capital territory rarely watch movies.
   
# Technical Challenges & Solutions

during the course of working with the data in SQL to ensure proper relationships between Users, Movies, and Ratings while maintaining data integrity, slight difficulties were encountered. I was able to solve this by:

1. Defined primary keys for each table

2. Implemented foreign key constraints in the Ratings table

3. Verified relationships to prevent orphan records


