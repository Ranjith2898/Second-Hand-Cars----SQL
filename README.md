# 🚗 Used Car Sales  Data Using SQL

## 📌 Project Overview
This project focuses on analyzing a used cars dataset using **SQL** to derive meaningful insights. We perform **data cleaning, querying, and advanced analytics** to help understand trends in car sales, pricing, fuel efficiency, and more.

## 📂 Dataset Details
The dataset contains **8,148 records** with information about used cars, including:
- Car Name
- Year of Manufacture
- Selling Price
- Kilometers Driven
- Fuel Type (Petrol, Diesel, Electric, etc.)
- Seller Type (Dealer, Individual, etc.)
- Transmission Type (Manual/Automatic)
- Owner Type (First, Second, etc.)
- Mileage, Engine Power, Torque
- Number of Seats

### 📁 Project Structure
```
📦 Car-Data-Analysis-SQL
 ┣ 📜 Car_data_Analysis.csv             # Raw Dataset
 ┣ 📜 Creating_DataBase_With_Table_Structure.sql  # SQL script to create DB & Tables
 ┣ 📜 Queries_With_Solutions.sql        # SQL Queries for Analysis
 ┣ 📜 README.md                          # Project Documentation
```

## 🛠 SQL Queries Used
I implemented SQL queries from **basic to advanced levels**, including:

### 🔹 Basic Queries
✅ View all records <br>
✅ Count total cars <br>
✅ Find unique fuel types <br>
✅ List cars based on transmission type <br>

### 🔹 Intermediate Queries
✅ Find average selling price per fuel type <br>
✅ Get top 5 most expensive cars <br>
✅ Find the oldest and newest cars <br>
✅ Extract cars with mileage greater than 20 kmpl <br>

### 🔹 Advanced Queries
✅ Identify the most powerful and most fuel-efficient cars <br>
✅ Calculate depreciation percentage based on car age <br>
✅ Analyze car sales trends per year <br>
✅ Find the most popular car brand <br>

## 🚀 How to Use the Project
1. **Clone the Repository**
   ```bash
   git clone https://github.com/Ranjith2898/used-car-sales-data---SQL.git
   cd Car-Data-Analysis-SQL
   ```
2. **Import the Dataset into MySQL**
   - Open MySQL Workbench / Command Line
   - Run `Creating_DataBase_With_Table_Structure.sql` to set up tables
   - Load `Car_data_Analysis.csv` into the database

3. **Execute Queries for Insights**
   - Open `Queries_With_Solutions.sql`
   - Run the queries to explore car sales data

## 📌 Contributing
Feel free to fork and improve the project! Raise an issue or submit a pull request. 🚀

## 🏆 Acknowledgments
This project is inspired by real-world **used car sales data** and aims to provide **data-driven decision-making insights** using SQL.
