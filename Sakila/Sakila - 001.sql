--1. Rentals by Customer Geography

--1.1. Contribution of Countries & Cities (in hierarchy) by rental amount - Treemap (or Heatmap) & sql query

SELECT country,
city,
sum(p.amount) AS 'Rental Amount'
FROM country c 
INNER JOIN city cc on c.country_id = cc.country_id
INNER JOIN address a on a.city_id = cc.city_id
INNER JOIN customer cu on a.address_id = cu.address_id
INNER JOIN payment p on p.customer_id = cu.customer_id
GROUP BY c.country, cc.city
ORDER BY sum(p.amount) DESC


--1.2. Rental amounts by countries for PG & PG-13 rated films - bar chart & sql query
SELECT country,
sum(p.amount) AS 'Total Amount for PG & PG-13'
FROM country c
INNER JOIN city cc on c.country_id = cc.country_id
INNER JOIN address a on a.city_id = cc.city_id
INNER JOIN customer cu on cu.address_id = a.address_id
INNER JOIN payment p on p.customer_id = cu.customer_id
INNER JOIN rental r on r.rental_id = p.rental_id
INNER JOIN inventory i on i.inventory_id = r.inventory_id
INNER JOIN film f on f.film_id = i.film_id
where f.rating = 'PG' or f.rating = 'PG-13'
GROUP BY c.country
ORDER BY sum(p.amount) DESC;



--1.3. Top 20 cities by number of customers who rented - bar chart & sql query
SELECT TOP 20
	city,
	count(cu.customer_id)
FROM city c 
INNER JOIN address a ON a.city_id = c.city_id
INNER JOIN customer cu on cu.address_id = a.address_id
INNER JOIN rental r on r.customer_id = cu.customer_id
GROUP BY c.city
ORDER BY count(cu.customer_id) DESC


--1.4. Top 20 cities by number of films rented - bar chart & sql query
	
SELECT TOP 20
	c.city,
	count(i.film_id)
FROM city c 
INNER JOIN address a ON a.city_id = c.city_id
INNER JOIN customer cu on cu.address_id = a.address_id
INNER JOIN rental r on r.customer_id = cu.customer_id
INNER JOIN inventory i on i.inventory_id = r.inventory_id
GROUP BY c.city
ORDER BY count(i.film_id) DESC



--1.5. Rank cities by average rental cost - bar chart & sql query
SELECT city,
avg(p.amount) 'Average Rental',
RANK() over (ORDER BY avg(p.amount) DESC) as Rank
FROM City c 
INNER JOIN Address a ON a.city_id = c.city_id
INNER JOIN Customer cu ON cu.address_id = a.address_id
INNER JOIN Rental r ON r.customer_id = cu.customer_id
INNER JOIN inventory i on i.inventory_id = r.inventory_id
INNER JOIN payment p ON p.customer_id = r.customer_id
GROUP BY c.city
ORDER BY AVG(p.amount) DESC;
