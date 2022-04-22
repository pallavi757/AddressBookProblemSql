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
('Sandip','Mehta','Lane 4','Mumbai','Maharashtra',489856,9923991299,'sm123@gmail.com'),
('Amit','Kumar','K90/78 Allahabad','Allahabad','Uttar Pradesh',451207,8888888888,'amitk777@gmail.com'),
('Rakhi','Sharma','Street 56','Ajmer','Rajasthan',123456,8558585851,'rakhis@gmail.com'),
('Pravin','kumar','Dwarka','Dwarka','Delhi',553200,7902705022,'kumarpravin111@gmail.com');

--edit address of Amit
update address_book
set Address = 'J90/54 Allahabad' where First_Name = 'Amit';
--retrives all datas in address_book
select* from address_book;

--delete contact of person named Rakhi
delete from address_book
where First_Name = 'Rakhi';

--retrives all datas in address_book
select* from address_book;

--retrives count by city and by state
select State, City, count(State) as 'Count by State', count(City) as 'Count by City' from address_book
group by State, City;

--retrives contacts of person in city 'Allahabad' in ascending order by FirstName
select * from address_book
where City = 'Allahabad'
order by First_Name asc;

--alter address book to add Name and Type
Alter table address_book
Add Name varchar(100), Type varchar(100)

update address_book set Name = 'Friend',Type = 'FriendGroup' where First_Name in ('Sandip');
update address_book set Name = 'Family',Type = 'FamilyGroup' where First_Name in ('Amit','Pravin');

select * from address_book;