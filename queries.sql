-- Query 1: Books per author
SELECT a.AuthorName, COUNT(ba.BookID) as BookCount
FROM Authors as a
LEFT JOIN BookAuthors as ba 
ON a.AuthorID = ba.AuthorID 
GROUP BY a.AuthorName;

-- Authors per book --  
SELECT b.BookName, COUNT(ba.AuthorID) as AuthorsCount 
From Books as b
LEFT JOIN BookAuthors as ba
ON b.BookID = ba.BookID
GROUP BY b.BookName;

-- Author royalties on a book --
SELECT b.BookName, b.royalty, 
(b.royalty * b.price) AS RoyaltyAmount
FROM Books as b;

-- Book royalties per author -- 

SELECT a.AuthorName,  
sum(b.royalty * b.price) AS RoyaltyAmount
FROM Authors as a
RIGHT JOIN Books as b
ON a.AuthorID = b.AuthorID
GROUP BY a.AuthorName;

-- Books in a genre
SELECT b.Genre, count(BookID)
FROM Books as b
GROUP BY b.Genre;

-- Books published by a publisher-- 
SELECT p.PublisherName, COUNT(b.BookID) As NoOfBooksPublished
FROM Publishers as p
RIGHT JOIN Books as b
ON p.PublisherID = b.PublisherID
GROUP by p.PublisherName;

-- Editors per book -- 
SELECT b.BookName, count(b.EditorID)As NoOfEditors
FROM Books as b
GROUP by b.BookName;

-- Books per Editor -- 
SELECT e.EditorName, count(b.bookID) AS NoOfBooks
FROM Books as b
RIGHT JOIN Editors as e
ON e.EditorID = b.EditorID
GROUP By e.EditorName;

-- Books in an Order -- 
SELECT od.OrderID, count(od.BookID) As No_of_Books
FROM OrderDetails as od
GROUP By od.OrderID;

-- Orders for a book -- 
SELECT od.BookID, count(od.OrderID) As No_Of_Orders
FROM OrderDetails as od 
GROUP by od.BookID;

-- Customer orders -- 
SELECT od.OrderID, c.CustomerName, o.Amount as OrderAmount
FROM OrderDetails as od 
INNER JOIN Customers as c
ON c.CustomerID = od.CustomerID
INNER JOIN Orders as o
ON o.OrderID = od.OrderID;

-- Orders per customer -- 
SELECT c.CustomerName, count(od.OrderID) as Orders_for_customer
FROM OrderDetails as od
INNER JOIN Customers as c
ON c.CustomerID = od.CustomerID
GROUP by c.CustomerName;


 












