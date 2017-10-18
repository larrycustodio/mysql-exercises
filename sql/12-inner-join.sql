#                              __
# .--------.--.--.-----.-----.|  |
# |        |  |  |__ --|  _  ||  |
# |__|__|__|___  |_____|__   ||__|
#          |_____|        |__|
#
# MySQL DML Exercises 12/20 - The INNER JOIN

# Write a query to select all rentals (complete with customer name and film title) made on 2005-05-24, ordered by rental date in descending order.
# Include the following columns: Rental Date, Customer First Name, Customer Last Name, Film Title
# You will need to perform an inner join on the customer, inventory and film tables (in that order) to include the necessary columns.

SELECT 
	rental_date,
    first_name, 
    last_name,
    title
FROM rental
INNER JOIN customer
ON rental.customer_id = customer.customer_id
INNER JOIN inventory
ON rental.inventory_id = inventory.inventory_id
INNER JOIN film
ON inventory.film_id = film.film_id
WHERE rental_date BETWEEN '2005-05-24' AND '2005-05-25'
ORDER BY rental_date DESC;
