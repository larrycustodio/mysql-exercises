#                              __
# .--------.--.--.-----.-----.|  |
# |        |  |  |__ --|  _  ||  |
# |__|__|__|___  |_____|__   ||__|
#          |_____|        |__|
#
# MySQL DML Exercises 3/20 - The WHERE Clause

# Write a query to retrieve films longer than 3 hours.
# Include only the following columns: Title, Description, Rating, Movie Length

SELECT title, description, rating, length 
FROM film_list 
WHERE length >= 180;

# Write a query to retrieve all payments made on or after 05/27/2005.
# Include only the following columns: Payment ID, Amount, Payment Date
SELECT payment_id, amount, payment_date 
FROM payment
WHERE payment_date >= '2005-05-27';