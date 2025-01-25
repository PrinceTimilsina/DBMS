create database mart;
use mart;
create table customers(
customer_id INT PRIMARY KEY,
customer_name VARCHAR(50),
contact_name VARCHAR(50),
country VARCHAR(50)
);

	INSERT INTO customers VALUES(1,'ABC Company','John Smith','USA');
	INSERT INTO customers VALUES(2,'XYZ Inc.','Jane Doe','Canada');
	INSERT INTO customers VALUES(3,'123 Corporation','Bob Johnson','UK');
	INSERT INTO customers VALUES(4,'Acme Corporation','Alice Brown','USA');
	INSERT INTO customers VALUES(5,'Global Industries','Tom Green','Australia');

	

	UPDATE customers
	SET country = 'USA'
	WHERE customer_id = 5

	DELETE FROM customers where customer_id = 2;
	SELECT *from customers;







	
