--Creating table Customer
Create table Customer(
Customer_ID Integer Primary KEY,
First_Name VarChar,
Last_Name VarChar,
Email VarChar,
Phone VarChar,
Address VarChar
);

--Creating table Employee
Create table Employee(
Employee_ID Integer Primary KEY,
First_Name VarChar,
Last_Name VarChar,
Email VarChar,
Phone VarChar,
Role VarChar
);

-- Creating table Supplier
CREATE table Supplier(
Supplier_ID Integer PRIMARY KEY,
Name VarChar,
Contact_Name VarChar,
Contact_Email VarChar,
Phone Integer,
Address VarChar
);

-- Creating table Category
CREATE table Category(
Category_ID Integer PRIMARY KEY,
Name VarChar,
Description VarChar
);

--Creating table Order_Header
Create table Order_Header(
Order_ID Integer Primary KEY,
Customer_ID Integer, 
Order_Date Date,
Status VarChar,
Total_Amount Integer,
Employee_ID Integer,
foreign key (Customer_ID) references Customer(Customer_ID),
foreign key (Employee_ID) references Employee(Employee_ID)
);

-- Creating table Product_Supplier
CREATE table Product_Supplier(
Product_Supplier_ID Integer PRIMARY KEY,
Product_ID Integer,
Supplier_ID Integer,
foreign key (Product_ID) references Product(Product_ID),
foreign key (Supplier_ID) references Supplier(Supplier_ID)
);

-- Creating table Order_Details
CREATE table Order_Details(
Order_Details_ID Integer Primary KEY,
Order_ID Integer,
Quantity Integer,
Unit_Price Integer,
Total_Price Integer,
foreign key (Order_ID) references Order_Header(Order_ID)
);

-- Creating table Product
CREATE table Product(
Product_ID Integer Primary KEY,
Name VarChar,
Price Integer,
Description VarChar,
Stock_Quantity Integer,
Category_ID Integer,
Reorder_Point Integer,
foreign key (Category_ID) references Category(Category_ID)
);

-- Creating table Order_Product
CREATE table Order_Product(
Order_Product_ID Integer Primary KEY,
Order_Details_ID Integer,
Product_ID Integer,
foreign key (Order_Details_ID) references Order_Details(Order_Details_ID),
foreign key (Product_ID) references Product(Product_ID)
);

INSERT INTO customer (customer_id, first_name, last_name, email, phone, address)
VALUES
(1, 'John', 'Doe', 'john.doe@example.com', '123-456-7890', '123 Elm St, Springfield, IL, 62701'),
(2, 'Jane', 'Smith', 'jane.smith@example.com', '234-567-8901', '456 Oak St, Springfield, IL, 62702'),
(3, 'Michael', 'Johnson', 'michael.johnson@example.com', '345-678-9012', '789 Pine St, Springfield, IL, 62703'),
(4, 'Emily', 'Davis', 'emily.davis@example.com', '456-789-0123', '101 Maple St, Springfield, IL, 62704'),
(5, 'David', 'Martinez', 'david.martinez@example.com', '567-890-1234', '202 Birch St, Springfield, IL, 62705');

INSERT INTO Employee (Employee_ID, First_Name, Last_Name, Email, Phone, Role)
VALUES
(101, 'John', 'Smith', 'john.smith@example.com', '555-123-4567', 'Sales Manager'),
(102, 'Mary', 'Johnson', 'mary.johnson@example.com', '555-234-5678', 'Customer Support'),
(103, 'James', 'Williams', 'james.williams@example.com', '555-345-6789', 'Warehouse Staff'),
(104, 'Patricia', 'Brown', 'patricia.brown@example.com', '555-456-7890', 'Store Manager'),
(105, 'Michael', 'Davis', 'michael.davis@example.com', '555-567-8901', 'Cashier');

INSERT INTO Supplier (Supplier_ID, Name, Contact_Name, Contact_Email, Phone, Address)
VALUES
(1, 'ABC Supplies', 'Alice Johnson', 'alice.johnson@abcsupplies.com', '555-987-6543', '123 Market St, Springfield, IL, 62701'),
(2, 'XYZ Distributors', 'Bob Smith', 'bob.smith@xyzdistributors.com', '555-876-5432', '456 Oak Rd, Springfield, IL, 62702'),
(3, 'Global Imports', 'Carlos Garcia', 'carlos.garcia@globalimports.com', '555-765-4321', '789 Pine Ave, Springfield, IL, 62703'),
(4, 'Supreme Goods', 'Diana Lee', 'diana.lee@supremegoods.com', '555-654-3210', '101 Maple Dr, Springfield, IL, 62704'),
(5, 'Tech Ventures', 'Ethan Brown', 'ethan.brown@techventures.com', '555-543-2109', '202 Birch Ln, Springfield, IL, 62705');

INSERT INTO Category (Category_ID, Name, Description)
VALUES
(1, 'Fresh Produce', 'Fruits and vegetables, both organic and non-organic'),
(2, 'Dairy', 'Milk, cheese, butter, yogurt, and other dairy products'),
(3, 'Beverages', 'Soft drinks, juices, coffee, tea, and alcoholic beverages'),
(4, 'Frozen Foods', 'Frozen vegetables, frozen meals, ice cream, and frozen snacks'),
(5, 'Bakery', 'Bread, pastries, cakes, and other baked goods'),



INSERT INTO Order_Header (Order_ID, Customer_ID, Order_Date, Status, Total_Amount, Employee_ID)
VALUES
(1, 1, '2024-12-01', 'Completed', 150, 101),
(2, 2, '2024-12-02', 'Pending', 200, 102),
(3, 3, '2024-12-03', 'Shipped', 250, 103),
(4, 4, '2024-12-04', 'Completed', 300, 104),
(5, 5, '2024-12-05', 'Cancelled', 100, 105);

INSERT INTO Product_Supplier (Product_Supplier_ID, Product_ID, Supplier_ID)
VALUES
(1, 101, 1),
(2, 102, 2),
(3, 103, 3),
(4, 104, 4),
(5, 105, 5);

INSERT INTO Order_Details (Order_Details_ID, Order_ID, Quantity, Unit_Price, Total_Price)
VALUES
(1, 1, 3, 50, 150), 
(2, 1, 2, 100, 200), 
(3, 2, 1, 200, 200), 
(4, 3, 5, 25, 125),  
(5, 3, 10, 15, 150); 

INSERT INTO Product (Product_ID, Name, Price, Description, Stock_Quantity, Category_ID, Reorder_Point)
VALUES
(1, 'Apple', 2, 'Fresh red apples', 50, 1, 20),       
(2, 'Banana', 1, 'Fresh yellow bananas', 80, 1, 25),   
(3, 'Whole Milk', 3, 'Full-fat dairy milk', 100, 2, 30), 
(4, 'Cheddar Cheese', 5, 'Sharp cheddar cheese', 40, 2, 15), 
(5, 'Coca-Cola', 1, 'Soft drink, 12 oz can', 150, 3, 50),

INSERT INTO Order_Product (Order_Product_ID, Order_Details_ID, Product_ID)
VALUES
(1, 1, 1),  
(2, 1, 3),  
(3, 2, 5), 
(4, 3, 7),  
(5, 4, 9),

