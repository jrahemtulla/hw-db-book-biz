DROP DATABASE IF EXISTS `books`;
CREATE DATABASE IF NOT EXISTS `books`;
USE `books`;

-- TABLE Books -- 
CREATE TABLE `Authors` (
	`AuthorID` int NOT NULL AUTO_INCREMENT,
    `AuthorName` varchar (50) NOT NULL,
    PRIMARY KEY (`AuthorID`),
    INDEX `AuthorID` (`AuthorID` ASC),
    INDEX `AuthorName` (`AuthorName` ASC)
    ) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4 COLLATE=utf8mb4_0900_ai_ci;
    
CREATE TABLE `Publishers` (
	`PublisherID` int NOT NULL AUTO_INCREMENT,
    `PublisherName` varchar (50) NOT NULL,
    PRIMARY KEY (`PublisherID`),
    INDEX `PublisherID` (`PublisherID` ASC),
    INDEX `PublisherName` (`PublisherName` ASC)
    ) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4 COLLATE=utf8mb4_0900_ai_ci;
    
    CREATE TABLE `Editors` (
	`EditorID` int NOT NULL AUTO_INCREMENT,
    `EditorName` varchar (50) NOT NULL,
    PRIMARY KEY (`EditorID`),
    INDEX `EditorID` (`EditorID` ASC),
    INDEX `EditorName` (`EditorName` ASC)
    ) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4 COLLATE=utf8mb4_0900_ai_ci;
    
      CREATE TABLE `Genres` (
	`GenreID` int NOT NULL AUTO_INCREMENT,
    `Genre` varchar (50) NOT NULL,
    PRIMARY KEY (`GenreID`),
    INDEX `GenreID` (`GenreID` ASC),
    INDEX `Genre` (`Genre` ASC)
    ) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `Books` (
	`BookID` 		int NOT NULL AUTO_INCREMENT,
    `BookName` 		varchar (60) NOT NULL ,
    `AuthorID` 		int NOT NULL,
	`PublisherID` 		int NOT NULL,	
    `EditorID` 		int NOT NULL,
	`Genre` 				varchar (15) NULL ,
	`Price` 			int NOT NULL ,
  	PRIMARY KEY (`BookID`),	
	INDEX `BookID` (`BookID` ASC),
	INDEX `BookName` (`BookName` ASC),	
	FOREIGN KEY (`PublisherID`) REFERENCES `Publishers` (`PublisherID`),
    FOREIGN KEY (`EditorID`) REFERENCES `Editors` (`EditorID`)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `Customers` (
	`CustomerID` int NOT NULL AUTO_INCREMENT,
    `CustomerName` varchar (50) NOT NULL,
    PRIMARY KEY (`CustomerID`),
    INDEX `CustomerID` (`CustomerID` ASC),
    INDEX `CustomerName` (`CustomerName` ASC)
    ) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `Orders` (
	`OrderID` int NOT NULL AUTO_INCREMENT,
    `Amount` int NOT NULL ,
    PRIMARY KEY (`OrderID`),
    INDEX `OrderID` (`OrderID` ASC),
    INDEX `Amount` (`Amount` ASC)
    ) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `OrderDetails` (
`OrderID` int NOT NULL,
`BookID` int NOT NULL, 
`Price` int NOT NULL,
PRIMARY KEY (`OrderID`, `BookID`),
FOREIGN KEY (`OrderID`) REFERENCES `Orders` (`OrderID`)
	ON DELETE NO ACTION
	ON UPDATE NO ACTION,
FOREIGN KEY (`BookID`) REFERENCES `Books` (`BookID`)
	ON DELETE NO ACTION
	ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `Royalties` (
    `BookID`          int NOT NULL,
    `Royalty`			decimal(13,2),
    PRIMARY KEY (`BookID`),
    INDEX `BookID` (`BookID` ASC)
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `BookAuthors` (
`BookID` int NOT NULL,
`AuthorID` int NOT NULL, 
PRIMARY KEY (`BookID`, `AuthorID`),
FOREIGN KEY (`BookID`) REFERENCES `Books` (`BookID`)
	ON DELETE NO ACTION
	ON UPDATE NO ACTION,
FOREIGN KEY (`AuthorID`) REFERENCES `Authors` (`AuthorID`)
	ON DELETE NO ACTION
	ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4 COLLATE=utf8mb4_0900_ai_ci;