--Rentals by Film Category

--2.1. Film categories by rental amount (ranked) & rental quantity – tabular& sql query
SELECT name,
sum(p.amount) AS 'RentalAmount',
count(r.rental_id) AS 'RentalQuantity',
RANK() over (ORDER BY sum(p.amount) desc) AS 'rank'
FROM category c 
INNER JOIN film_category fc on fc.category_id = c.category_id
INNER JOIN film f on f.film_id = fc.film_id
INNER JOIN inventory i on i.film_id = f.film_id
INNER JOIN rental r on r.inventory_id = i.inventory_id
INNER JOIN payment p on p.rental_id = r.rental_id
GROUP BY name
ORDER BY sum(p.amount) DESC

--2.2. Film categories by rental amount (ranked)
SELECT name,
sum(p.amount) AS 'RentalAmount',
RANK() over (ORDER BY sum(p.amount) desc) AS 'rank'
FROM category c 
INNER JOIN film_category fc on fc.category_id = c.category_id
INNER JOIN film f on f.film_id = fc.film_id
INNER JOIN inventory i on i.film_id = f.film_id
INNER JOIN rental r on r.inventory_id = i.inventory_id
INNER JOIN payment p on p.rental_id = r.rental_id
GROUP BY name
ORDER BY sum(p.amount) DESC

--2.3. Film categories by average rental amount (ranked) & – tabular & sql query

SELECT name,
avg(p.amount) AS 'RentalAmount',
RANK() over (ORDER BY avg(p.amount) desc) AS 'rank'
FROM category c 
INNER JOIN film_category fc on fc.category_id = c.category_id
INNER JOIN film f on f.film_id = fc.film_id
INNER JOIN inventory i on i.film_id = f.film_id
INNER JOIN rental r on r.inventory_id = i.inventory_id
INNER JOIN payment p on p.rental_id = r.rental_id
GROUP BY name

--2.4. Contribution of Film Categories by number of customers - Treemap (or Heatmap) & sql query
SELECT 
	c.name,
	count(cu.customer_id) AS 'NumberOfCustomer'
FROM category c
INNER JOIN film_category fc on fc.category_id = c.category_id
INNER JOIN film f on f.film_id = fc.film_id
INNER JOIN inventory i on i.film_id = f.film_id
INNER JOIN rental r on r.inventory_id = i.inventory_id
INNER JOIN payment p on p.rental_id = r.rental_id
INNER JOIN customer cu on cu.customer_id = p.customer_id
GROUP BY c.name
ORDER BY count(cu.customer_id) ASC

--2.5. Contribution of Film Categories by rental amount - Treemap (or Heatmap) & sql query
SELECT 
	c.name,
	sum(p.amount) AS 'RentalAmount'
FROM category c
INNER JOIN film_category fc on fc.category_id = c.category_id
INNER JOIN film f on f.film_id = fc.film_id
INNER JOIN inventory i on i.film_id = f.film_id
INNER JOIN rental r on r.inventory_id = i.inventory_id
INNER JOIN payment p on p.rental_id = r.rental_id
INNER JOIN customer cu on cu.customer_id = p.customer_id
GROUP BY c.name
ORDER BY sum(p.amount) DESC
