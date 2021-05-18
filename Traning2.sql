--create database Hotel;

use Hotel;
--drop table Booking;
--drop table Guest;
--drop table Room;
--drop table Hotel;

--create table Hotel(
--	Hotel_No int not null, 
--	Name varchar(40),
--	Address varchar(100),
--	Primary key(Hotel_No)
--);

--create table Room(
--	Room_No int not null,
--	Hotel_No int not null,
--	Type varchar(10),
--	Price_per_night int,
--	primary key(Room_No, Hotel_No),
--	foreign key(Hotel_No) references Hotel(Hotel_No)
--		ON UPDATE CASCADE
--);

--create table Guest(
--	Guest_No int not null,
--	Guest_name varchar(50),
--	Guest_Address varchar(100),
--	primary key(Guest_No),
--);

--create table Booking(
--	Hotel_No int not null,
--	Guest_No int not null,
--	Date_From date,
--	Date_To date,
--	Room_No int not null,
--	primary key(Hotel_No,Guest_No,Date_From),
--	foreign key(Hotel_No) references Hotel(Hotel_No),
--	foreign key(Room_No, Hotel_No) references Room(Room_No, Hotel_No),
--	foreign key(Guest_No) references Guest(Guest_No),
--);

--insert into Hotel values(122,'Mariott','Cairo');
--insert into Hotel values(222,'Hilton','Cairo');
--insert into Hotel values(325,'Park Place','El-Gouna');
--insert into Hotel values(924,'Grosvenor','London');
--insert into Hotel values(565,'Devon','Boston');

--insert into Room values(365,924,'single',29);
--insert into Room values(487 ,924, 'double', 93);
--insert into Room values(756,122, 'single', 150);
--insert into Room values(142 ,325 ,'double', 175);
--insert into Room values(359 ,122, 'single', 160);
--insert into Room values(653,222,'double',145);
--insert into Room values(589,325,'double',38);
--insert into Room values(235,565,'double',50);
--insert into Room values(399,924,'single',63);

--insert into Guest values(12,'John Mickel','London');
--insert into Guest values(21,'Samira Sayed','Cairo');
--insert into Guest values(93,'Mohamed Yasser','Ramsis,Cairo');
--insert into Guest values(123,'William Cendy','Boston');
--insert into Guest values(52,'Carla Nadal','London');

--insert into Booking values(924, 12,'04-05-02','04-05-07',365);
--insert into Booking values(222, 21 ,'04-05-15','04-05-15',653);
--insert into Booking values(565, 52 ,'04-04-01','04-05-05',235);
--insert into Booking values(924, 123 ,'04-04-15','04-05-15',399);
--insert into Booking values(122, 93 ,'04-04-01','04-05-07',359);


--Q1
--UPDATE Room SET Price_per_night = Price_per_night*2;

--Q2
--select * from Hotel;

-- Q3
--select * from Hotel
--	where Address = 'London';

--Q4
--select Guest_Name, Guest_Address from Guest
--	where Guest_Address = 'London'
--	Order by Guest_Name;

--Q5
--select * from Room
--	where (Type = 'double' or Type = 'family') and Price_per_night < 40
--	Order by Price_per_night;

--Q6
--select * from Booking
--	where date_to is Null

--Q7
--select count(Hotel_No) AS [Number of Hotels] from Hotel;

--Q8
--select AVG(Price_per_night) AS [Average room price] from Room;

--Q9
--select SUM(Price_per_night) AS [Total Revenue per night for double rooms] from Room where Type = 'double' ;