--Creating table Customer
Create table Customer(
Customer_ID Integer PRIMARY KEY
First_Name Varchar
Last_Name Varchar
Email Varchar
Phone Varchar
Address Varchar
);

--Creating table Order_Header
Create table Order_Header(
Order_ID Integer PRIMARY KEY
Customer_ID Integer FOREIGN KEY
foreign key (Customer_ID) references Customer(Customer_ID)
Order_Date Date
Status Varchar
Total_Amount Integer
Employee_ID Integer FOREIGN KEY
foreign key (Employee_ID) references Employee (Employee_ID)
);

--Creating table Employee
Create table Employee(
Employee_ID Integer PRIMARY KEY
First_Name Varchar
Last_Name Varchar
Email Varchar
Phone Varchar
Role Varchar
);



-- Creating table Product_Supplier
CREATE table Product_Supplier(
Product_Supplier_ID Integer PRIMARY KEY,
Product_ID Integer,
Supplier_ID Integer,
foreign key (Product_ID) references Product(Product_ID),
foreign key (Supplier_ID) references Supplier(Supplier_ID)
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

