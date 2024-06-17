
--3.1. List Films with rental amount, rental quantity, rating, rental rate, replacement cost and category name – tabular
--& sql query

SELECT f.title,
sum(p.amount) as 'RentalAmount',
count(r.rental_id) as 'RentalQuantity',
f.rating, 
f.rental_rate,
f.replacement_cost,
c.name
FROM film f
INNER JOIN film_category fc ON fc.film_id = f.film_id
INNER JOIN category c ON c.category_id = fc.category_id
INNER JOIN Inventory i ON i.film_id = f.film_id
INNER JOIN Rental r ON r.inventory_id = i.inventory_id
INNER JOIN Payment p on p.rental_id = r.rental_id
GROUP BY f.title,f.rating, 
f.rental_rate,
f.replacement_cost,
c.name
order by f.title asc


--3.2. List top 10 Films by rental amount (ranked) – bar chart & sql query

SELECT TOP 10 f.title,
sum(p.amount) as 'RentalAmount',
RANK() OVER (ORDER BY sum(p.amount) DESC )
FROM film f
INNER JOIN Inventory i ON i.film_id = f.film_id
INNER JOIN Rental r ON r.inventory_id = i.inventory_id
INNER JOIN Payment p on p.rental_id = r.rental_id
GROUP BY f.title

--3.3. List top 20 Films by number of customers(ranked) – bar chart & sql query

SELECT TOP 20 f.title,
count(r.customer_id) as 'NumberOfCustomers',
ROW_NUMBER() OVER (ORDER BY count(r.customer_id) DESC) AS rank
FROM film f
INNER JOIN Inventory i ON i.film_id = f.film_id
INNER JOIN Rental r ON r.inventory_id = i.inventory_id
GROUP BY f.title

--3.4. List Films with the word “punk” in title with rental amount and number of customers – tabular& sql query

SELECT f.title,
count(r.customer_id) as 'NumberOfCustomers',
p.amount as 'RentalAmount'
FROM film f
INNER JOIN Inventory i ON i.film_id = f.film_id
INNER JOIN Rental r ON r.inventory_id = i.inventory_id
INNER JOIN Payment p ON p.rental_id = r.rental_id
WHERE f.title like '%punk%'
GROUP BY f.title, p.amount

--3.5. Contribution by rental amount for films with a documentary category - Treemap (or Heatmap) & sql query
SELECT f.title,
sum(p.amount) as 'RentalAmount'
FROM film f
INNER JOIN film_category fc ON fc.film_id = f.film_id
INNER JOIN category c ON c.category_id = fc.category_id
INNER JOIN Inventory i ON i.film_id = f.film_id
INNER JOIN Rental r ON r.inventory_id = i.inventory_id
INNER JOIN Payment p ON p.rental_id = r.rental_id
WHERE c.name = 'Documentary'
GROUP BY f.title
order by sum(p.amount) desc;
