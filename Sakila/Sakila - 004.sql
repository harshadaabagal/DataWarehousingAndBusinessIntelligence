--4. Rentals by Customer (Last name, First Name)
--4.1. List Customers (Last name, First Name) with rental amount, rental quantity, active status, country and city –
--tabular & sql query

SELECT CONCAT(last_name,',', first_name) AS 'CustomerName',
sum(p.amount) AS 'RentalAmount',
count(r.rental_id) AS 'Rental Quantity',
c.active AS 'Active Status',
co.country,
ci.city
FROM customer c
INNER JOIN address a ON a.address_id = c.address_id
INNER JOIN city ci on a.city_id = ci.city_id
INNER JOIN country co on co.country_id = ci.country_id
INNER JOIN rental r on c.customer_id = r.customer_id
INNER JOIN payment p on p.rental_id = r.rental_id
GROUP BY CONCAT(last_name,',', first_name),c.active,co.country,ci.city
ORDER BY CONCAT(last_name,',', first_name) ASC

--4.2. List top 10 Customers (Last name, First Name) by rental amount (ranked) for PG & PG-13 rated films – bar chart
--& sql query

SELECT TOP 10 CONCAT(last_name,',', first_name) AS 'CustomerName',
sum(p.amount) AS 'RentalAmount',
RANK() OVER (ORDER BY sum(p.amount) DESC) AS 'Rank'
FROM customer c
INNER JOIN rental r on c.customer_id = r.customer_id
INNER JOIN payment p on p.rental_id = r.rental_id
INNER JOIN inventory i on i.inventory_id = r.inventory_id
INNER JOIN film f on f.film_id = i.film_id
WHERE f.rating = 'PG' or f.rating = 'PG-13'
GROUP BY CONCAT(last_name,',', first_name)

--4.3. Contribution by rental amount for customers from France, Italy or Germany - Treemap (or Heatmap) & sql
--query
SELECT CONCAT(last_name,',', first_name) AS 'CustomerName',
sum(p.amount) AS 'RentalAmount'
FROM customer c
INNER JOIN address a ON a.address_id = c.address_id
INNER JOIN city ci on a.city_id = ci.city_id
INNER JOIN country co on co.country_id = ci.country_id
INNER JOIN rental r on c.customer_id = r.customer_id
INNER JOIN payment p on p.rental_id = r.rental_id
WHERE co.country = 'France' or co.country = 'Italy' or co.country = 'Germany'
GROUP BY CONCAT(last_name,',', first_name)
ORDER BY sum(p.amount)  DESC

--4.4. List top 20 Customers (Last name, First Name) by rental amount (ranked) for comedy films – bar chart & sql
--query
SELECT TOP 20 CONCAT(last_name,',', first_name) AS 'CustomerName',
sum(p.amount) AS 'RentalAmount',
ROW_NUMBER() OVER (ORDER BY sum(p.amount) DESC) AS 'Rank'
FROM customer c
INNER JOIN rental r on c.customer_id = r.customer_id
INNER JOIN payment p on p.rental_id = r.rental_id
INNER JOIN inventory i on i.inventory_id = r.inventory_id
INNER JOIN film f on f.film_id = i.film_id
INNER JOIN film_category fc on fc.film_id = f.film_id
INNER JOIN category ca on ca.category_id = fc.category_id
WHERE ca.name = 'Comedy'
GROUP BY CONCAT(last_name,',', first_name)

--4.5. List top 10 Customers (Last name, First Name) from China by rental amount (ranked) for films that have
--replacement costs greater than $24 – bar chart & sql query

SELECT TOP 10 CONCAT(last_name,',', first_name) AS 'CustomerName',
sum(p.amount) AS 'RentalAmount',
ROW_NUMBER() OVER (ORDER BY sum(p.amount) DESC) AS 'Rank'
FROM customer c
INNER JOIN address a ON a.address_id = c.address_id
INNER JOIN city ci on a.city_id = ci.city_id
INNER JOIN country co on co.country_id = ci.country_id
INNER JOIN rental r on c.customer_id = r.customer_id
INNER JOIN payment p on p.rental_id = r.rental_id
INNER JOIN inventory i on i.inventory_id = r.inventory_id
INNER JOIN film f on f.film_id = i.film_id
WHERE f.replacement_cost > 24 and co.country = 'China'
GROUP BY CONCAT(last_name,',', first_name)