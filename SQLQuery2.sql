create database EntryForm;
/*First Answer*/
create table customers(
customer_id integer primary key,
customer_name varchar(255),
contact_name varchar(255),
country varchar(255)
);

/* Second Answer*/
insert into
customers(customer_id,customer_name,contact_name,country)
  values
(1,'ABC Company','John Smith','USA'),
(2,'ABC pvt.ltd','Nelson Smith','CANADA'),
(3,'A6ptr.it','Franz Becknabaur','USA'),
(4,'10P.itr','Kane William','Sweden'),
(5,'AUS inc.','Steven Smith','Austrialia');

/*3RD Question*/
Update customers
set country='USA'
where customer_id=1;

/*4TH QSN*/

Delete from customers where customer_id=5;
/*5th*/
select*from customers where country='USA';
/*6th QUESTION*/
select * from customers
order by customer_name asc;
/*7th Question table creation and data insertion*/

/*
TYPES OF RELATION 
            1->1
			1->M
			M->1
			M->M
			
*/

/*CONSIDER the following table:
   orders(o_id,o_name,o_qty,o_price,o_date)*/

   /*First Answer*/

   CREATE TABLE orders(
       o_id INTEGER PRIMARY KEY,
	   o_name VARCHAR(255),
	   o_qty int,
	   o_price int,
	   o_date  DATE,
	   o_fk INT,
	   FOREIGN KEY (o_fk)
	   REFERENCES customers(customer_id)
	   );

	   INSERT INTO orders(o_id,o_name,o_qty,o_price,o_date,o_fk)
	   VALUES(1,'Iphone',1,150000, '02-06-2021',1);
	   
	   INSERT INTO orders(o_id,o_name,o_qty,o_price,o_date,o_fk)
	   VALUES(2,'Macbook',3,450000, '02-07-2021',4);
	   
	   INSERT INTO orders(o_id,o_name,o_qty,o_price,o_date,o_fk)
	   VALUES(3,'Macbook pro',3,450000, '02-06-2021',4);
	   
	   INSERT INTO orders(o_id,o_name,o_qty,o_price,o_date,o_fk)
	   VALUES(4,'Samsung Galaxy',3,50000, '02-09-2021',3);
	   
	   INSERT INTO orders(o_id,o_name,o_qty,o_price,o_date,o_fk)
	   VALUES(5,'OnePlus',3,150000, '02-16-2021',1);

	   select * from orders;
	   select * from customers;

	   /*7th Question*/
	   select * from 
	   customers inner join orders
	   on customers.customer_id=orders.o_fk;

  