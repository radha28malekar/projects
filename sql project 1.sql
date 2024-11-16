# create database named retail,import file from excel and name the table retail_store
create database retail;
use retail;
select * from retail_store;

#total no.of records in the table
select count(*) from retail_store;

#total no.of customers
select count(distinct customer_id) from retail_store;

#total no.of male and female customers whose age is more than 30
select gender,count(gender) as above_30 from retail_store where age>30 group by gender;

#total no.of male and female customers
select  gender,count(gender) as total from retail_store  group by gender;

#Total no.of customers for each product category
select product_category,count(Customer_id) as purchaser from retail_store group by product_category;

#Total sale for each category
select product_category,sum(total_amount) from retail_store group by product_category;

#total quantity sold for each product category
select product_category,count(quantity) as total_quantity from retail_store group by product_category;

#show details of products whose prices are 500 and 1000
select * from retail_store where price_per_unit between 500 and 1000;

#show the minimum price in the price list
select min(price_per_unit) from retail_store;

#show the details of male customers who purchased electonics items
select * from retail_store where product_category='Electronics' and gender='male';

#show details of customers whose ages are 30,50 and 44
select * from retail_store where age in(30,50,44);

#what is the total amount spent by each customer ranging from largest to smallest
select customer_id,sum(total_amount) from retail_store group by customer_id order by sum(total_amount) desc;


