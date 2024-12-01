create table customer(
customer_id integer primary key
first_name varchar
last_name varchar
email varchar
phone varchar
address varchar
);

create table order_header(
order_id integer primary key
customer_id integer foreign key
foreign key (customer_id) references customer(customer_id)
order_date date
status varchar
total_amount integer
employee_id integer foreign key
foreign key (employee_id) references employee (employee_id)
);

create table employee(
employee_id integer primary key
first_name varchar
last_name varchar
email varchar
phone varchar
role varchar
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

-- Creating table Category_ID
CREATE table Category_ID(
Category_ID Integer PRIMARY KEY,
Name VarChar,
Description VarChar
);
