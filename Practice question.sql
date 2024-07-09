create database Buyers;
use buyers;

create table payment(
 customer_id int primary key,
 customer varchar(50),
 mode varchar(50),
 city varchar(50)
);

insert into payment(customer_id,customer,mode,city)
values
(101,"olivia Barret","Netbanking","Portland"),
(102,"Ethan sinclaire","Credit Card","Miami"),
(103,"Maya hemandez","Credit Card","Seatle"),
(104,"Liam Donovan","Netbanking","Denver"),
(105,"Sophia Nguyen","Credit Card","New Orleans"),
(106,"Caleb Foster","Netbanking","Minneapolis"),
(107,"Ava Patel","Debit Card","Phoenix"),
(108,"Lucas Carter","Debit Card","Boston"),
(109,"Issabella martinez","Netbanking","Nashville"),
(110,"Jack Brooks","Credit Card","Boston");

select * from payment;

select mode, count(customer) from payment group by mode;