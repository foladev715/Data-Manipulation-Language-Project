create database DDL_Checkpoint;
use DDL_Checkpoint;
create table Customer(Customer_id varchar(20) primary key, Customer_Name varchar(20) not null, Customer_Tel numeric);
create table Product(Product_id varchar(20) primary key, Product_Name varchar(20) not null, Price int unsigned );
create table Orders(Customer_id varchar(20), Product_id varchar(20), Quantity int, Total_amount int, foreign key(Customer_id) references Customer(Customer_id), foreign key(Product_id) references Product(Product_id));
alter table Product add Category varchar(20) after Price;
alter table Orders add OrderDate datetime default current_timestamp after Total_amount;
show tables;
insert into Product values("P01", "Samsung Galaxy S20", 3299, "Smartphone");
insert into Product values("P02", "ASUS Notebook", 4599, "PC");
insert into Customer values("C01", "Ali", 71321009);
insert into Customer values("C02", "Asma", 77345823);
insert into Orders values("C01", "P02", 2, 9198, NULL);
insert into Orders values("C02", "P01", 1, 3299, 28/05/2020);
select * from Orders;
update Orders set OrderDate = 2020-05-28 where Customer_id = "C02";
update Orders set OrderDate = "2020-05-28 02:20:40" where Customer_id = "C02";
select * from Orders;


