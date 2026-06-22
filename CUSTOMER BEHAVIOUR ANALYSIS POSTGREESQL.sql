select * from customer limit 20 


'''Male vs Female Revenue'''
select gender,sum(purchase_amount)as total_revenue
from customer
group by gender
order by total_revenue desc 


'''Identify cx who used discounts and still spend amount more than average '''
select customer_id,purchase_amount
from customer
where discount_applied = 'Yes' and purchase_amount>(select avg(purchase_amount) from customer)


'''Top 5 products highest_average_rating'''
select item_purchased,round(avg(review_rating::numeric),2)as average_review_rating
from customer
group by item_purchased
limit 5 


'''Compare average purchase amount between shippingtype: Express and standard'''
select shipping_type,round(avg(purchase_amount),2) as average_spend
from customer
where shipping_type in('Express','Standard')
group by shipping_type


'''who spend more? compare revenue and average between subscribed or non subscribed cx ? '''
select subscription_status,count(customer_id) as total_customers,round(avg(purchase_amount),2)as average_purchase_amount,
round(sum(purchase_amount),2)as total_revenue
from customer
group by subscription_status
order by total_revenue , average_purchase_amount desc 


'''Top 5 highest selling products that using with discounts (product wise percentage)'''
select item_purchased,round(100*sum(case when discount_applied ='Yes' then 1 else 0 end)/count(*),2) as discount_rate
from customer
group by item_purchased
order by discount_rate desc 
limit 5


'''Segmenting the customers based on the previous purchases and showing the count of each segment---NEW,RETURNING,LOYAL'''
with customer_type as (
select customer_id,previous_purchases,
case
when previous_purchases =1 then 'New'
when previous_purchases between 2 and 10 then 'Returning'
else 'Loyal'
end as customer_segment
from customer
)
select customer_segment,count(*) as total_orders
from customer_type
group by customer_segment


'''Top 3 most purchased products in each category'''
with items_count as(
select category,item_purchased,count(customer_id)as total_orders,
row_number() over(partition by category order by count(customer_id)desc )as item_rank
from customer
group by category,item_purchased
)
select category,total_orders,item_purchased,item_rank
from items_count
where item_rank<=3;


'''checking cx who orders more than 5 are subscribers ? '''
select subscription_status,count(customer_id)as Repeat_buyers
from customer
where previous_purchases > 5 
group by subscription_status


'''What is the revenue contribution of age group '''
select age_group, sum(purchase_amount) as total_revenue
from customer
group by age_group
order by total_revenue desc ;





