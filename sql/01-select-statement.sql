#                              __ 
# .--------.--.--.-----.-----.|  |
# |        |  |  |__ --|  _  ||  |
# |__|__|__|___  |_____|__   ||__|
#          |_____|        |__|    
#                                 
# MySQL DML Exercises 1/20 - The SELECT Statement

# Write a query to retrieve all rows and all columns from the actor table.
SELECT * 
FROM actor;

# Write a query to retrieve all rows and only the last_name column from the actor table.
SELECT last_name 
FROM actor;

# Write a query to retrieve all rows with the following columns from the film table:
# 
# COLUMN NAME           Note
# title                 Exists in film table.
# description           Exists in film table.
# rental_duration       Exists in film table.
# rental_rate           Exists in film table.
# total_rental_cost     rental_duration * rental_rate

SELECT 
    title,
    description,
    rental_duration,
    rental_rate,
    rental_duration * rental_rate AS total_rental_cost
FROM film;