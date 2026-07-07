USE sales_db;

CREATE TABLE sales (
    order_id VARCHAR(50) PRIMARY KEY,
    order_date DATE,
    ship_date DATE,
    customer_id VARCHAR(50),
    customer_name VARCHAR(100),
    segment VARCHAR(50),
    country VARCHAR(50),
    city VARCHAR(50),
    region VARCHAR(50),
    product_id VARCHAR(50),
    category_dept VARCHAR(50),
    category VARCHAR(50),
    product_name VARCHAR(100),
    sales DECIMAL(10,2),
    quantity INT,
    discount DECIMAL(4,2),
    profit DECIMAL(10,2)
);
	
select * from sales;
select region , sum(sales) as total_sales from sales group by region;
select category,sum(profit) as profit from sales group by category;
select product_name,sum(profit) as total_profit from sales 
group by product_name order by total_profit desc 
limit 5;
select customer_name,sum(sales) as total_sales from sales
group by customer_name order by total_sales desc
limit 10;
select month(order_date) as months,sum(sales) as total_sales
from sales group by months order by months;
select year(order_date) as years,sum(sales) as total_sales
from sales group by years order by years;
select discount,avg(profit) from sales group by discount order by discount;
select product_name,sum(profit) as profit from sales
group by product_name order by profit desc
limit 1;
select product_name,sum(profit) as profit from sales 
where profit <0 group by product_name order by profit asc
limit 10;
select sum(quantity) as total_quantity from sales;
select avg(sales) as average_order_value from sales;
select avg(profit) as average_profit from sales;
select avg(discount) as average_discount from sales;
       
       
       
       

