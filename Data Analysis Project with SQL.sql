-- 1. Total Number of Sales
select count(`Invoice ID`) as total_number_of_sales from supermarketsales;
-- 2. Total Revenue
select round(sum(Total) ,2)as Total_Revenue from supermarketsales;
-- 3. Total Income 
select round(sum(`gross income`),2) Total_Income from supermarketsales;
-- 4.	Distribution of Product line by Income
select `Product line`, round(sum(`gross income`),2) as income from supermarketsales group by `Product line` order by income desc;
-- 5.	Distribution of Payment Method
select Payment, count(Payment) as Number_of_Times from supermarketsales group by Payment order by Number_of_Times desc;
select `Customer type`,round(sum(`gross income`),2) income from supermarketsales group by `Customer type` order by income desc;
select Gender, round(sum(`gross income`),2) income from supermarketsales group by Gender order by income desc;