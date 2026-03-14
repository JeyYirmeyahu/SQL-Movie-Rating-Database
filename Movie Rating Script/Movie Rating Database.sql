#PHASE 1: Database and Table Setup
##Step 1: Create the Database
#####Database created.

##Step 2: Create the Tables
#####Table created and can be found in the SCHEMAS under the movieratingdb.

#Step 3: Verify Your Schema
DESCRIBE movieratingdb.`users table`;
DESCRIBE movieratingdb.`movies table`;
DESCRIBE movieratingdb.`ratings table`;

#PHASE 2: Insert and Explore Data
##Step 1: Insert Sample Data
#####Inserting dataset into the USer Table
INSERT INTO movieratingdb.`users table` (user_id, name, age, gender, location) VALUES(1, 'Jeremiah Olalekan', 32, 'Male', 'Lagos, Nigeria'),
(2, 'Sarah Johnson', 28, 'Female', 'London, UK'),
(3, 'David Chen', 35, 'Male', 'Beijing, China'),
(4, 'Maria Gomez', 30, 'Female', 'Madrid, Spain'),
(5, 'Ahmed Hassan', 40, 'Male', 'Cairo, Egypt'),
(6, 'Michael Brown', 27, 'Male', 'New York, USA'),
(7, 'Aisha Bello', 24, 'Female', 'Abuja, Nigeria'),
(8, 'Daniel Okafor', 33, 'Male', 'Enugu, Nigeria'),
(9, 'Grace Kim', 29, 'Female', 'Seoul, South Korea'),
(10, 'Samuel Mensah', 36, 'Male', 'Accra, Ghana'),
(11, 'Fatima Ali', 26, 'Female', 'Dubai, UAE'),
(12, 'Lucas Silva', 31, 'Male', 'São Paulo, Brazil'),
(13, 'Emily Carter', 23, 'Female', 'Toronto, Canada'),
(14, 'Peter Novak', 38, 'Male', 'Prague, Czech Republic'),
(15, 'Sophia Rossi', 28, 'Female', 'Rome, Italy'),
(16, 'John Smith', 45, 'Male', 'Sydney, Australia'),
(17, 'Chinedu Nwoye', 34, 'Male', 'Anambra, Nigeria'),
(18, 'Amaka Eze', 25, 'Female', 'Owerri, Nigeria'),
(19, 'Victor Adeyemi', 37, 'Male', 'Ibadan, Nigeria'),
(20, 'Hannah Müller', 29, 'Female', 'Berlin, Germany');
#####Inserting dataset into the Movies Table
INSERT INTO movieratingdb.`movies table` (movie_id, title, release_year, genre, director) VALUES
(1, 'Inception', 2010, 'Sci-Fi', 'Christopher Nolan'),
(2, 'Titanic', 1997, 'Romance/Drama', 'James Cameron'),
(3, 'The Dark Knight', 2008, 'Action', 'Christopher Nolan'),
(4, 'Avatar', 2009, 'Sci-Fi', 'James Cameron'),
(5, 'Black Panther', 2018, 'Action', 'Ryan Coogler'),
(6, 'The Godfather', 1972, 'Crime/Drama', 'Francis Ford Coppola'),
(7, 'Avengers: Endgame', 2019, 'Action/Sci-Fi', 'Anthony Russo'),
(8, 'Jurassic Park', 1993, 'Adventure/Sci-Fi', 'Steven Spielberg'),
(9, 'The Matrix', 1999, 'Sci-Fi/Action', 'Lana Wachowski'),
(10, 'Frozen', 2013, 'Animation', 'Chris Buck'),
(11, 'Gladiator', 2000, 'Action/Drama', 'Ridley Scott'),
(12, 'Interstellar', 2014, 'Sci-Fi', 'Christopher Nolan'),
(13, 'Spider-Man: No Way Home', 2021, 'Action', 'Jon Watts'),
(14, 'The Lion King', 1994, 'Animation', 'Roger Allers'),
(15, 'Parasite', 2019, 'Thriller/Drama', 'Bong Joon-ho'),
(16, 'Joker', 2019, 'Drama', 'Todd Phillips'),
(17, 'Doctor Strange', 2016, 'Fantasy/Action', 'Scott Derrickson'),
(18, 'Wonder Woman', 2017, 'Action', 'Patty Jenkins'),
(19, 'Top Gun: Maverick', 2022, 'Action', 'Joseph Kosinski'),
(20, 'Mission: Impossible – Fallout', 2018, 'Action', 'Christopher McQuarrie');
#####Inserting dataset into the Ratings Table
INSERT INTO movieratingdb.`ratings table` (user_id, movie_id, rating_value, rating_date) VALUES
(1, 3, 5, '2025-01-10'),
(1, 5, 4, '2025-01-11'),
(1, 7, 5, '2025-01-12'),
(2, 1, 4, '2025-01-13'),
(2, 4, 5, '2025-01-14'),
(3, 5, 5, '2025-01-15'),
(3, 6, 4, '2025-01-16'),
(4, 2, 4, '2025-01-17'),
(5, 6, 5, '2025-01-18'),
(5, 8, 4, '2025-01-19'),
(6, 4, 4, '2025-01-20'),
(7, 7, 5, '2025-01-21'),
(7, 9, 4, '2025-01-22'),
(8, 8, 4, '2025-01-23'),
(9, 9, 5, '2025-01-24'),
(10, 10, 3, '2025-01-25'),
(10, 12, 4, '2025-01-26'),
(11, 11, 4, '2025-02-01'),
(12, 12, 5, '2025-02-03'),
(13, 13, 4, '2025-02-05'),
(14, 14, 5, '2025-02-06'),
(15, 15, 5, '2025-02-08');

##Step 2: Write Basic Queries
#####1. View all users
SELECT * FROM movieratingdb.`users table`;

#####List all movies
SELECT * FROM movieratingdb.`movies table`;

#####View all ratings
SELECT * FROM movieratingdb.`ratings table`;

######Find movies rated by a specific user 
SELECT DISTINCT user_id, Movie_id FROM movieratingdb.`ratings table` WHERE user_id = 5;
SELECT DISTINCT user_id, Movie_id FROM movieratingdb.`ratings table` WHERE user_id = 1;

#PHASE 3: Using Comparison and Logical Operators
#####Find users older than 25
SELECT user_id, name, age FROM movieratingdb.`users table` WHERE age > 25;

#####Find movies released between 2000 and 2020
SELECT * FROM movieratingdb.`movies table` WHERE release_year BETWEEN 2000 AND 2020;

#####Find female users from Abuja
SELECT * FROM movieratingdb.`users table` WHERE gender ='Female' AND location ='Abuja';

#####Find movies that are not Sci-Fi
SELECT * FROM movieratingdb.`movies table` WHERE genre <> 'Sci-Fi';

#####Find ratings greater than or equal to 4
SELECT * FROM movieratingdb.`ratings table` WHERE rating_value >= 4;

#PHASE 4: Sorting, Filtering, and Pagination
#####Sort movies by release year (newest first)
SELECT * FROM movieratingdb.`movies table` ORDER BY release_year DESC;

#####List distinct genres
SELECT DISTINCT genre FROM movieratingdb.`movies table`;

#####Top 3 highest ratings
SELECT * FROM movieratingdb.`ratings table` ORDER BY rating_value DESC LIMIT 3;

#####Skip the first 2 rows and display next 3
SELECT * FROM movieratingdb.`movies table` LIMIT 2,3;

#####Sort users alphabetically
SELECT * FROM movieratingdb.`users table` ORDER BY name ASC;