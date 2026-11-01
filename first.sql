-- Use the SQL commands you just learned and find the best dinner spots in the city and answer the following questions:
-- 1)What are the distinct neighborhood
-- 2)What are the distinct cuisine types?
-- 3)Suppose we would like some Chinese takeout. What are our options?
-- 4)Return all the restaurants with reviews of 4 and above.
-- 5)Suppose Abbi and Ilana want to have dinner. Return all the restaurants that are Italian and $$$.
-- 6)If you want to find Italian restaurants with exactly three dollar signs:
-- 7)Your coworker Trey can’t remember the exact name of a restaurant he went to but he knows it contains the word ‘Candy’ in it.
--         Can you find it for him using a query?
-- 8)Let’s order delivery to the house! Find all the close-by spots in Midtown, Downtown or Chinatown
-- 9)Find all the health grade pending restaurants (empty values).
-- 10)Create a Top 4 Restaurants Ranking based on reviews.
-- Columns: Neighborhood, Cuisine, Reviews, Expense, Health;


CREATE TABLE Restarants(
    Name varchar(255),
    Neighborhood varchar(300),
    Cuisine varchar(300),
    Reviews int,
    Expense varchar(100),
    Health int
    );

INSERT INTO Restarants(Name, Neighborhood, Cuisine, Reviews, Expense, Health)VALUES
    ("Taste of India", "Midtown","Indian", 4, "$", 95),
    ("Italian Food", "Downtown", "Italian", 4.1, "$$", 89),
    ("Chinese Street Food", "Chinatown", "Chinese", 5, "$", 25),
    ("Italian Candy", "Midtown", "Italian", 4.5, "$$", 97),
    ("Bharat Tastes", "Downtown", "Indian", 5, "$$$", 98),
    ("Italiano's", "Downtown", "Italian", 5, "$$$", 99),
    ("Chinatown Specials", "Chinatown", "Chinese", 4, "$", 89);

SELECT * FROM Restarants;
SELECT * FROM Restarants WHERE Cuisine = "Chinese" AND Reviews > 4;
SELECT * FROM Restarants WHERE Cuisine = "Italian" AND Expense = "$$$";
SELECT * FROM Restarants WHERE Name LIKE "%Candy";
SELECT * FROM Restarants;
SELECT * FROM Restarants ORDER BY Reviews DESC LIMIT 4;