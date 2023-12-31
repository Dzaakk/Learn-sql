#1
SELECT id, name, city , '%', commission*100
FROM salesman;

#2
SELECT ' For',ord_date,',there are', COUNT(ord_no),'orders.' 
FROM orders 
GROUP BY ord_date;

#3
SELECT * FROM orders
GROUP BY ord_no;

#4 
SELECT * FROM orders
GROUP BY ord_date DESC;

#5
SELECT * FROM orders
GROUP BY ord_date, purch_amt DESC;

#6 
SELECT cust_name ,city, grade 
FROM customer
GROUP BY customer_id;

#7
SELECT salesman_id, ord_date, MAX(purch_amt) 
FROM orders
GROUP BY salesman_id, ord_date
ORDER BY salesman_id, ord_date;

#8
SELECT cust_name, city, grade 
FROM customer
GROUP BY 3 DESC;

#9
SELECT customer_id, COUNT(DISTINCT ord_no), MAX(purch_amt)
FROM orders
GROUP BY customer_id
ORDER BY 2 DESC;

#10
SELECT ord_date, SUM(purch_amt), SUM(purch_amt)*.15 
FROM orders
GROUP BY ord_date
ORDER BY ord_date;