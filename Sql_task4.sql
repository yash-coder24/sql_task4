select* from books
-- Counts how many books are in each genre (COUNT(*))

SELECT Genre,COUNT(*) AS Total_Books FROM books
GROUP BY Genre;

-- Sums the stock of books per genre (SUM(Stock))

SELECT 
    Genre,
    SUM(Stock) AS Total_Stock
FROM 
    books
GROUP BY 
    Genre;
-- Calculates the average price of books per genre (AVG(Price))
SELECT 
    Genre,
    AVG(Price) AS Average_Price
FROM 
    books
GROUP BY 
    Genre;
    
-- Filter groups using HAVING.

--  the total books is more than 60.

SELECT Genre,COUNT(*) AS Total_Books
FROM books
GROUP BY Genre
HAVING Total_Books>60;

-- the total stock is more than 50.

SELECT Genre,SUM(Stock) AS Total_Stock FROM books
GROUP BY Genre
HAVING Total_Stock > 50;

--  the average price is more than 20

SELECT Genre,AVG(Price) AS Average_Price FROM books
GROUP BY Genre
HAVING  Average_Price > 20 limit 10;

-- HAVING is used after grouping to filter aggregated values (unlike WHERE which filters before aggregation).