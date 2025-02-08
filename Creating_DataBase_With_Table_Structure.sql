create database cars_details;

use cars_details;

create table cars_data(
Car_Name	varchar(200),
manufactured_year	year,
selling_price 	int,
km_driven	int,
fuel	ENUM('Petrol', 'Diesel', 'Electric', 'CNG', 'LPG', 'Other'),
seller_type	ENUM('Dealer', 'Individual', 'Trustmark Dealer'),
transmission	ENUM('Manual', 'Automatic'),
owner	varchar(60),
mileage	varchar(20),
engine	varchar(20),
max_power varchar(20),
torque	text,
seats int
);



select * from cars_data;