--Table to store the information of different users in our database

CREATE TABLE Users (
    UserID INT PRIMARY KEY,                                       --Unique Identifier for each user
    UserName VARCHAR(100),                                        -- Name of the User 
    Email VARCHAR(100)                                            -- Email of the User
);

-- Table to store the information about the Orders from Users
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,                                      -- Establishing a relationship with the
    UserID INT,                                                   -- Foreign key referencing user table
    OrderDate DATE,                                               -- Dates for each Order 
    FOREIGN KEY (UserID) REFERENCES Users(UserID)                 -- Establishing a relationship with the User table
);

-- Table to hold every details related to the product 
CREATE TABLE Products (
    ProductID INT PRIMARY KEY,                                    -- Unique Identifier for  each product                        
    ProductName VARCHAR(100),                                     -- Name of each product
    Price DECIMAL(10, 2)                                          -- Price for each product
);

-- Table to  store the product which is ordered, contains order details.
CREATE TABLE OrderDetails (
    OrderDetailID INT PRIMARY KEY,                                -- Unique identifier for each order details
    OrderID INT,                                                  -- Foreign Key referencing the Order table
    ProductID INT,                                                -- Foregn Key referencing the product table
    Quantity INT,                                                 -- Quantity for each product
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),             -- Establishing a relationship with the order table
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)        -- Establishing a relationship with the product table
);

-- table to hold the  user profile
CREATE TABLE UserProfile (
    ProfileID INT PRIMARY KEY,                                    -- Unique identifier for each userprofile
    UserID INT UNIQUE,                                            -- Foregn Key referencing the user table
    Address VARCHAR(255),                                         -- Address of the user
    PhoneNumber VARCHAR(15),                                      --phone number of the user
    FOREIGN KEY (UserID) REFERENCES Users(UserID)                 --Establishing a relationship with the User table
);

  --Inserting data into Users table
  INSERT INTO  Users (UserID, Username, Email,) VALUES (1, 'Nelyse Tuyisenge', 'nelyse@gmail.com');
  INSERT INTO Users (UserID, UserName, Email) VALUES (2, 'uwase sandrine', 'uwase@gmail.com'); 
  INSERT INTO  Users (UserID, Username, Email,) VALUES (3, 'Hirwa Bonhour', 'hirwa@gmail.com');

  COMMIT;

   -- Inserting data into product Table

  INSERT INTO Product (ProductID, ProductName, Price) VALUES (1, 'Widget', '5000');
  INSERT INTO Product (ProductID, ProductName, Price) VALUES (2, 'plates', '10000');

   --Inserting data into  OrderDetails table

INSERT INTO OrderDetails (OrderDetailID, OrderID, ProductID, Quantity) VALUES (1, 1, 1, 5);
INSERT INTO OrderDetails (OrderDetailID, OrderID, ProductID, Quantity) VALUES(2, 2, 2, 5);

   --Inserting data into Order table

INSERT INTO Orders (OrderID, UserID, OrderDate) VALUES (2, 1, TO_DATE('2024-09-20', 'YYYY-MM-DD'));
INSERT INTO Orders (OrderID, UserID, OrderDate) VALUES (3, 2, TO_DATE('2024-09-20', 'YYYY-MM-DD'));
INSERT INTO Orders (OrderID, UserID, OrderDate) VALUES (4, 3, TO_DATE('2024-09-24', 'YYYY-MM-DD'));

   --Inserting data into UserProfile table
INSERT INTO UserProfile (ProfileID, UserID, Address, PhoneNumber) VALUES (1, 1, 'kicukiro', '0789868057');
INSERT INTO UserProfile (ProfileID, UserID, Address, PhoneNumber) VALUES (2, 3, 'kanombe', '0796898057');

   --Updating the Email of random User who has UserID=2

UPDATE users SET Email = 'sandrine@gmail.com' WHERE UserID = 2;

   -- Deleting an Order where OrderID=2

  DELETE FROM Orders WHERE OrderID = 2;

   -- join query to retrieve related data

  SELECT Users.UserName, Orders.OrderDate
  FROM Users
  JOIN Orders ON Users.UserID = Orders.UserID;
  


  
