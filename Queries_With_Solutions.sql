-- Basic Queries

-- 1.Get all car details.

select * from
cars_data;

-- 2.Count the total number of cars in the dataset.

select count(*) as Total_cars
from cars_data;

-- 3.Find the distinct fuel types available.

select distinct(fuel) as fuel_types
from cars_data; 

-- 4.Find the number of cars for each fuel type.

select fuel as fuel_type,
count(*) as cars
from cars_data;

-- 5.List all the cars with Manual transmission.

select car_name, transmission
from cars_data
where transmission = "manual";

-- 6.Find all cars manufactured after 2020.

select Car_Name, manufactured_year 
from cars_data
where manufactured_year > 2020;

-- Intermediate Queries

-- 1.Find the average selling price of cars based on fuel type.

select fuel,avg(selling_price) as Avg_Selling_Price
from cars_data
group by fuel;

-- 2.Find the oldest and newest cars in the dataset.

select car_Name, manufactured_year
from cars_data
order by manufactured_year
limit 1; -- oldest car

select car_Name, manufactured_year
from cars_data
order by manufactured_year desc
limit 1; -- Newest car

-- 3.Get the top 5 most expensive cars.

select car_name,selling_price
from cars_data
order by selling_price desc 
limit 5;

-- 4.Find the number of cars sold by each seller type.

select seller_type,count(*) as sold_cars
from cars_data
group by  seller_type
order by sold_cars desc;

-- 5.Find cars with mileage greater than 20 kmpl.

select car_name, mileage
from cars_data
where mileage > "20 kmpl"
order by mileage desc;

-- 6.Find the top 3 most common car brands.

select car_name as Brand,count(*) as count
from cars_data
group by Brand
order by count desc
limit 3;

-- Advanced Queries

-- 1.Find the most expensive car for each fuel type.

select car_name, fuel as fuel_type,
selling_price
from cars_data c1
where seller_type = (select max(selling_price)
from cars_data c2
where c1.fuel = c2.fuel);


-- 2.Find the depreciation percentage of each car based on its year.

select Car_Name, manufactured_year, selling_price,
       round((selling_price / POWER(0.9, (2025 - manufactured_year))),2) AS estimated_original_price,
       round(((1 - (selling_price / POWER(0.9, (2025 - manufactured_year)))) * 100),2) AS depreciation_percentage
from cars_data;


-- 3.Find the most powerful car based on max_power.

select car_name, max_power from cars_data
order by max_power desc
limit 1;

-- 4.Find the most fuel-efficient car (best mileage).

select car_name, mileage
from cars_data
order by mileage desc 
limit 1;

-- 5.Find the most driven car based on km_driven.

select car_name, km_driven
from cars_data
order by km_driven desc 
limit 1;

-- 6.Find the average mileage per fuel type.

select fuel as fuel_type,
round(avg(mileage),2) as avg_mileage
from cars_data
group by fuel_type;

-- 7.Find the most popular car model.

select Car_Name
from (select car_name,
count(*) 
from cars_data
group by Car_Name
limit 1) as A;

-- 8.Find the number of cars available per year.

select manufactured_year as year,count(*) as available_cars
from cars_data
group by year
order by available_cars desc;
