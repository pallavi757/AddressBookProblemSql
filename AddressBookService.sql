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