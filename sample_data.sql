-- --------------------------------------
--  POPULATE Authors
-- --------------------------------------

INSERT INTO `Authors` VALUES (002, 'JK Rowling');
INSERT INTO `Authors` VALUES (003, 'Dan Brown');
INSERT INTO `Authors` VALUES (004,'Paulo Coelho');
INSERT INTO `Authors` VALUES (005, 'Rider Haggard');
INSERT INTO `Authors` VALUES (006,'Khaled Hosseini');
INSERT INTO `Authors` VALUES (001, 'C.S.Lewis');
-- --------------------------------------
--  POPULATE Publishers
-- --------------------------------------

INSERT INTO `Publishers` VALUES (1001, 'Penguin Random House');
INSERT INTO `Publishers` VALUES (1002, 'Bloomsbury Publishing');
INSERT INTO `Publishers` VALUES (1003, 'HarcourtPublishers');
INSERT INTO `Publishers` VALUES (1004, 'Riverhead Books');
INSERT INTO `Publishers` VALUES (1005, 'Doubleday');

-- --------------------------------------
--  POPULATE Editors
-- --------------------------------------

INSERT INTO `Editors` VALUES (2001, 'Blake Atwood');
INSERT INTO `Editors` VALUES (2002, 'Richard Francis-Bruce');
INSERT INTO `Editors` VALUES (2003, 'Unknown');
INSERT INTO `Editors` VALUES (2004, 'Pauline Baynes');
INSERT INTO `Editors` VALUES (2005, 'Jason Kaufman');


-- --------------------------------------
--  POPULATE BOOKS
-- --------------------------------------

INSERT INTO `Books` VALUES (1,'Kite Runner',006, 1004, 2004, 'Fiction', 10, 0.5);
INSERT INTO `Books` VALUES (2,'Harry Potter', 002, 1002, 2003, 'Fiction', 20, 0.6);
INSERT INTO `Books` VALUES (3,'The Da Vinci Code', 003, 1005, 2005, 'Mystery', 25, 0.4);
INSERT INTO `Books` VALUES (4,'The Alchemist', 004 , 1003, 2002 , 'Fiction', 8, 0.3);
INSERT INTO `Books` VALUES (5,'Harry Potter No2', 002, 1002, 2003, 'Fiction', 15, 0.6);



-- --------------------------------------
--  POPULATE Customers
-- --------------------------------------

INSERT INTO `Customers` VALUES (4001, 'Jahanara');
INSERT INTO `Customers` VALUES (4002, 'James');
INSERT INTO `Customers` VALUES (4003, 'Jenny');
INSERT INTO `Customers` VALUES (4004, 'Jess');

-- --------------------------------------
--  POPULATE Orders
-- --------------------------------------

INSERT INTO `Orders` VALUES (5001,20);
INSERT INTO `Orders` VALUES (5002,20);
INSERT INTO `Orders` VALUES (5003, 45);


-- --------------------------------------
--  POPULATE Order Details
-- --------------------------------------

INSERT INTO `OrderDetails` VALUES (5001, 1,10,4001);
INSERT INTO `OrderDetails` VALUES (5002, 2, 20,4001);
INSERT INTO `OrderDetails` VALUES (5003, 3, 25,4004);
INSERT INTO `OrderDetails` VALUES (5003, 2, 20,4002);

-- --------------------------------------
--  POPULATE Royalties
-- --------------------------------------

-- INSERT INTO `Royalties` VALUES (1, 0.1);
-- INSERT INTO `Royalties` VALUES (2, 0.2);
-- INSERT INTO `Royalties` VALUES (3, 0.3);
-- INSERT INTO `Royalties` VALUES (4, 0.4);
-- INSERT INTO `Royalties` VALUES (5, 0.1);


-- --------------------------------------
--  POPULATE Book Authors
-- --------------------------------------

INSERT INTO `BookAuthors` VALUES (1, 006);
INSERT INTO `BookAuthors` VALUES (2, 002);
INSERT INTO `BookAuthors` VALUES (3, 003);
INSERT INTO `BookAuthors` VALUES (4, 004);
INSERT INTO `BookAuthors` VALUES (5, 002);

