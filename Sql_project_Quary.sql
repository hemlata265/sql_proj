create database pizza_sales;
use pizza_sales;
select * from pizza_sales;

## 1. total revenue : the sum of the total price of aa pizza order

         select  round(sum(total_price),2) as Total_Revenue
		 from pizza_sales;
         
## 2. Average order value:The average amount spent per order 
		select round(sum(total_price)/count(order_id),2) as Average_order_pizza
        from pizza_sales;

## 3.Total Pizzas Sold
		select sum(quantity) as Total_pizzas_sold
			 from pizza_sales;
## 4.Total the total number of orders placed.
		select count(order_id) as Total_orders
        from pizza_sales;
## 5.Average Pizza Per Order
        select round(sum(quantity) / count(distinct order_id),2) as Average_pizza_per_order
        from pizza_sales;
## 6. Daily trend for total Orders
        select  order_date , sum(total_price)
		from pizza_sales
         group by order_date;
## 7 Monthly Trend for Total Orders
		select extract(hour from  order_time) as hour_of_day , count(order_id) as total_price
		from pizza_sales
        group by extract(hour from order_time)
        order by hour_of_day;
## 8 Percentage of Sales by Pizza Category

     select pizza_category from pizza_sales;

    select pizza_category, sum(total_price) as category_sales
	from pizza_sales
	group by pizza_category;
    
## 9.Percentage of Sales by Pizza Size

    select pizza_size, sum(total_price) as size_sales
    from pizza_sales
	group by pizza_size;
    
## 10 Total Pizza Sold by Pizza Category

    select pizza_category, sum (quantity) as pizzas_sold
    from pizza_sales
	group by pizza_category;
    
## 11  Top 5 Best Sellers by Revenue

     select pizza_name as pizza_name, sum(total_price) as revenue
     from pizza_sales
	 group by pizza_name
     order by revenue desc
      limit 5;
## 12 Total Quantity
      select  pizza_name,sum (quantity) as total_quantity
	  from pizza_sales
      group by pizza_name
      order by total_quantity desc
	  limit 5;
       
## 13 Total Orders:
      select pizza_name, count(order_id) as total_orders
      from pizza_sales
	  group by pizza_name
      order by total_orders 
      limit 5;
## 14 Bottom 5 Best Sellers by Revenue, Total Quantity and Total Orders

      select pizza_name as  pizza_name, sum(total_price) as revenue
      from pizza_sales
	  group by pizza_name
      order by revenue 
      limit 5;
      
      select pizza_name, sum(quantity) as  total_quantity
      from pizza_sales
      group by pizza_name
      order by total_quantity 
      limit 5;
      
      select pizza_name, count (order_id) as total_orders
      from pizza_sales
	  group by pizza_name
      order by total_orders 
      limit  5;




















        
