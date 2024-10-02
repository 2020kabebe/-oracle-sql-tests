# -oracle-sql-tests

## Problem Statement
This database manages user orders in an e-commerce system. It includes tables for users, orders, products, order details, and user profiles.

## Tables Created
- **Users**: Stores user information including ID, name, and email.
- **Orders**: Contains order information linked to users.
- **Products**: Holds product details including ID and price.
- **OrderDetails**: Links orders to products with quantity details.
- **UserProfile**: Stores additional user information.

## SQL Commands Executed
1. **Table Creation**: Created tables with appropriate relationships and constraints.
2. **Data Insertion**: Inserted sample data into each table.
3. **Data Updates**: Updated user email addresses as needed.
4. **Data Deletion**: Removed specific orders from the database.
5. **Joins**: Executed queries to retrieve related data across multiple tables.

 ## Screenshots

The following screenshots illustrate key operations performed on the database:

1. **Table Creation**
      - This screenshot shows the successful creation of the tables.
   ![CreatedTables](https://github.com/user-attachments/assets/640904ab-9635-4ac7-b021-8e6dbb90237e)

3. **Data Insertion**
     - This screenshot displays the successful insertion of data into the `Users`and 'Products' tables.
    ![InsertedRows](https://github.com/user-attachments/assets/ec81244c-815d-422b-b564-df9fe391fdcf)

3. **Data Update**
     - This screenshot confirms that the email address for uwase sandreine was updated successfully.
  BEFORE UPDATING HER EMAIL
![BeforeUpdating](https://github.com/user-attachments/assets/5b418022-f3a3-4ae4-9764-f3be1bedfd41)
AFTER UPDATING HER EMAIL
![AfterUpdating](https://github.com/user-attachments/assets/31aaad0a-75f9-483a-8e7e-80118b45665e)
4. **Data Deletion**
     - This screenshot shows the successful deletion of an order from the `Orders` table
  BEFORE DELETING AN ORDER FROM THE 'Orders' table.

![BeforeDeletingOrder](https://github.com/user-attachments/assets/19eb5aeb-f884-4118-b732-339ca2be3e4b)

  AFTER DELETING ORDER
  
![AfterDelete](https://github.com/user-attachments/assets/85e8c9a6-749e-4c38-ba99-407dde13b2a3)

5. **Join Query Results**
    - This screenshot demonstrates the results of a join query between `Users` and `Orders`, showing how data is related across tables
![performJoins](https://github.com/user-attachments/assets/e5bc97b1-d914-4847-94d0-46a01ad6931e)

6.  **Conceptual, Logical and Physical Data Model**
![diagram](https://github.com/user-attachments/assets/9d253b79-bb52-4f09-9b14-5763e75e5ba4)
  
   ## Results Explanation
The queries executed successfully demonstrate the ability to manage data within the database effectively. The relationships between tables are maintained through foreign keys.

## Conclusion
This project illustrates basic database operations including creating tables and managing data using SQL commands effectively.

   
   

   
