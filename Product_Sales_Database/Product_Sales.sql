create table Brand
(
    BrandId char(4) primary key,
    Brand_Name Varchar2(50) not null,
    Description Varchar2(100) not null
);

insert into Brand Values ('B001', 'Nike', 'Just Do It');
insert into Brand Values ('B002', 'Adidas', 'Impossible is Nothing');
insert into Brand Values ('B003', 'Tommy Hilfiger', 'Fashion is Fleeting; Style is Forever');
insert into Brand Values ('B004', 'Goldstar', 'Feels Good');
insert into Brand Values ('B005', 'Vans', 'Off the Wall');
insert into Brand Values ('B006', 'Puma', 'We are Forever Faster');
insert into Brand Values ('B007', 'Under Armour', 'The Only Way is Through');
insert into Brand Values ('B008', 'Reebok', 'Be More Human');
insert into Brand Values ('B009', 'Columbia', 'We Connect Active People with Their Passion');

select * from Brand;

create table Product 
(
    ProductId char(5) primary key,
    ProductName Varchar2(100) not null,
    BrandId char(4) not null,
    ProductFor varchar2(50) not null,
    foreign key(BrandId) references Brand(BrandId),
    Product_Size float not null,
    Color Varchar2(100) null,
    Price int not null
);

insert into Product(ProductId, ProductName, BrandId, ProductFor, Product_Size, Color, Price)
values
('PR001', 'Air Jordan 1', 'B001', 'Men', '8.5', 'Black', '100');

insert into Product(ProductId, ProductName, BrandId, ProductFor, Product_Size, Color, Price)
values
('PR002', 'Superstar Shoes', 'B002', 'Women', '8', 'Grey', '80');

insert into Product(ProductId, ProductName, BrandId, ProductFor, Product_Size, Color, Price)
values
('PR003','Urban Oxford', 'B003', 'Women', '9', 'Black', '90');

insert into Product(ProductId, ProductName, BrandId, ProductFor, Product_Size, Color, Price)
values
('PR004', 'Black Brogue Leather', 'B004', 'Men', '9.5', 'Purple', '70');

insert into Product(ProductId, ProductName, BrandId, ProductFor, Product_Size, Price)
values
('PR005', 'Old Skool', 'B005', 'Men', '9', '70');

insert into Product(ProductId, ProductName, BrandId, ProductFor, Product_Size, Color, Price)
values
('PR006', 'Axelion Sneaker', 'B006', 'Women', '7.5', 'Yellow', '95');

insert into Product(ProductId, ProductName, BrandId, ProductFor, Product_Size, Color, Price)
values
('PR007', 'Charged Assert 9', 'B007', 'Men', '7', 'Red', '80');

insert into Product(ProductId, ProductName, BrandId, ProductFor, Product_Size, Color, Price)
values
('PR008', 'Club MEMT', 'B008', 'Women', '9.5', 'Brown', '150');

insert into Product(ProductId, ProductName, BrandId, ProductFor, Product_Size, Price)
values
('PR009', 'Cresthood Hiking Shoe', 'B009', 'Women', '8.5', '120');

select * from Product;

create table Post
(
    PostId char(4) Primary key,
    Post_Name Varchar2(50) not null,
    Salary int not null
);

insert into Post Values ('P001', 'Cashier', '2000');
insert into Post Values ('P002', 'Manager', '4000');
insert into Post Values ('P003', 'Janitor', '1000');
insert into Post Values ('P004', 'Stocker', '1500');

select * from Post;

create table Employee
(
    EmployeeId char(4) primary key,
    Employee_Name Varchar2(50) not null,
    Employee_Location Varchar2(50) not null,
    Phone_Number Int not null,
    PostId char(4) not null,
    foreign key(PostId) references Post(PostId)
);

insert into Employee(EmployeeId, Employee_Name, Employee_Location, Phone_Number, PostId)
Values
('E001', 'Nishan', 'Chicago', '9845', 'P001');

insert into Employee(EmployeeId, Employee_Name, Employee_Location, Phone_Number, PostId)
Values
('E002', 'Prashant', 'Austin', '9812', 'P002');

insert into Employee(EmployeeId, Employee_Name, Employee_Location, Phone_Number, PostId)
Values
('E003', 'Ankit', 'Dallas', '9834', 'P003');

insert into Employee(EmployeeId, Employee_Name, Employee_Location, Phone_Number, PostId)
Values
('E004', 'Dipesh', 'Charlottesville', '9876', 'P004');

insert into Employee(EmployeeId, Employee_Name, Employee_Location, Phone_Number, PostId)
Values
('E005', 'Bashu', 'Columbus', '9856', 'P002');

insert into Employee(EmployeeId, Employee_Name, Employee_Location, Phone_Number, PostId)
Values
('E006', 'Omkar', 'Starkville', '9843', 'P001');

insert into Employee(EmployeeId, Employee_Name, Employee_Location, Phone_Number, PostId)
Values
('E007', 'Ranjan', 'Louisville', '9807', 'P002');

insert into Employee(EmployeeId, Employee_Name, Employee_Location, Phone_Number, PostId)
Values
('E008', 'Roshan', 'San Antonio', '9870', 'P003');

insert into Employee(EmployeeId, Employee_Name, Employee_Location, Phone_Number, PostId)
Values
('E009', 'Bibek', 'Richland', '9898', 'P004');

select * from Employee;

create table Store
(
    StoreId char(4) primary key,
    Store_Name Varchar2(100) not null,
    Store_Location Varchar2(100) not null,
    EmployeeId char(4) not null,
    foreign key(EmployeeId) references Employee(EmployeeId)
);

insert into Store(StoreId, Store_Name, Store_Location, EmployeeId)
Values
('S001', 'Shoes World', 'Chicago', 'E001');

insert into Store(StoreId, Store_Name, Store_Location, EmployeeId)
Values
('S002', 'Burlington', 'Austin', 'E002');

insert into Store(StoreId, Store_Name, Store_Location, EmployeeId)
Values
('S003', 'Fashion Footwear', 'Dallas', 'E003');

insert into Store(StoreId, Store_Name, Store_Location, EmployeeId)
Values
('S004', 'Sole Mates', 'Charlottesville', 'E004');

insert into Store(StoreId, Store_Name, Store_Location, EmployeeId)
Values
('S005', 'The Comfort Zone', 'Columbus', 'E005');

insert into Store(StoreId, Store_Name, Store_Location, EmployeeId)
Values
('S006', 'Shoe Garden', 'Starkville', 'E006');

insert into Store(StoreId, Store_Name, Store_Location, EmployeeId)
Values
('S007', 'Shoeniverse', 'Louisville', 'E007');

insert into Store(StoreId, Store_Name, Store_Location, EmployeeId)
Values
('S008', 'The Shoe Rack', 'San Antonio', 'E008');

insert into Store(StoreId, Store_Name, Store_Location, EmployeeId)
Values
('S009', 'On Air Shoes', 'Richland', 'E009');

select * from Store;


create table Customer
(
    CustomerId char(4) primary key,
    Customer_Name Varchar2(50) not null,
    Customer_Location Varchar2(50) not null,
    Phone_Number int not null,
    Email Varchar2(100) unique
);

insert into Customer Values ('C001', 'Bipal', 'Chicago', '6097', 'bipal@gmail.com');
insert into Customer Values ('C002', 'Safal', 'Austin', '6098', 'safal@gmail.com');
insert into Customer Values ('C003', 'Amrit', 'Dallas', '6099', 'amrit@gmail.com');
insert into Customer Values ('C004', 'Amrita', 'Charlottesville', '6096', 'amrita@gmail.com');
insert into Customer Values ('C005', 'Bipana', 'Columbus', '6095', 'bipana@gmail.com');
insert into Customer Values ('C006', 'Santosh', 'Starkville', '6094', 'santosh@gmail.com');
insert into Customer Values ('C007', 'Shanti', 'Louisville', '6093', 'shanti@gmail.com');
insert into Customer Values ('C008', 'Shraddha', 'San Antonio', '6092', 'shraddha@gmail.com');
insert into Customer Values ('C009', 'Roshan', 'Richland', '6091', 'roshan@gmail.com');

select * from Customer;

create table Sales
(
    SalesId char(5) primary key,
    ProductId char(5) not null,
    foreign key(ProductId) references Product(ProductId),
    StoreId char(4) not null,
    foreign key(StoreId) references Store(StoreId),
    CustomerId char(4) not null,
    foreign key(CustomerId) references Customer(CustomerId),
    Sales_Quantity int not null,
    Rate int not null,
    Total_Sale int not null
);


insert into Sales(SalesId, ProductId, StoreId, CustomerId, Sales_Quantity, Rate, Total_Sale)
values
('SL001', 'PR001', 'S001', 'C001', 2, 110, 220);

insert into Sales(SalesId, ProductId, StoreId, CustomerId, Sales_Quantity, Rate, Total_Sale)
values
('SL002', 'PR002', 'S002', 'C002', 5, 90, 450);

insert into Sales(SalesId, ProductId, StoreId, CustomerId, Sales_Quantity, Rate, Total_Sale)
values
('SL003', 'PR003', 'S003', 'C003', 7, 100, 700);

insert into Sales(SalesId, ProductId, StoreId, CustomerId, Sales_Quantity, Rate, Total_Sale)
values
('SL004', 'PR004', 'S004', 'C004', 3, 80, 240);

insert into Sales(SalesId, ProductId, StoreId, CustomerId, Sales_Quantity, Rate, Total_Sale)
values
('SL005', 'PR005', 'S005', 'C005', 2, 90, 180);

insert into Sales(SalesId, ProductId, StoreId, CustomerId, Sales_Quantity, Rate, Total_Sale)
values
('SL006', 'PR006', 'S006', 'C006', 4, 100, 400);

insert into Sales(SalesId, ProductId, StoreId, CustomerId, Sales_Quantity, Rate, Total_Sale)
values
('SL007', 'PR007', 'S007', 'C007', 8, 90, 720);

insert into Sales(SalesId, ProductId, StoreId, CustomerId, Sales_Quantity, Rate, Total_Sale)
values
('SL008', 'PR008', 'S008', 'C008', 9, 155, 1395);

insert into Sales(SalesId, ProductId, StoreId, CustomerId, Sales_Quantity, Rate, Total_Sale)
values
('SL009', 'PR009', 'S009', 'C009', 2, 125, 250);

select * from Sales;





select * from Product;
select * from Brand;
select * from Store;
select * from Employee;
select * from Post;
select * from Customer;
select * from Sales;
