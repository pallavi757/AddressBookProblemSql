--create new database
 create database address_book_service;
--select the address_book_service database for use
 use address_book_service;

 --creates table named address_book in address_book_service database
 create table address_book(
ID int identity(1,1) primary key,
First_Name varchar(50),
Last_Name varchar(50),
Address varchar(200),
City varchar(50),
State varchar(50),
Zip bigint,
PhoneNumber bigint,
Email varchar(50));

select * from address_book;

--Insert data in table address_book
insert into address_book values
('Sandip','Mehta','Lane 4','Mumbai','Maharashtra','489856','9923991299','sm123@gmail.com'),
('Amit','Kumar','K90/78 Allahabad','Allahabad','Uttar Pradesh','451207','8888888888','amitk777@gmail.com'),
('Rakhi','Sharma','Street 56','Ajmer','Rajasthan','123456','8558585851','rakhis@gmail.com');
--retrives all data in address_book
select* from address_book;
