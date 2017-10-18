#                              __
# .--------.--.--.-----.-----.|  |
# |        |  |  |__ --|  _  ||  |
# |__|__|__|___  |_____|__   ||__|
#          |_____|        |__|
#
# MySQL DML Exercises 13/20 - The LEFT JOIN

# Write a query to select all payments made by active customers, ordered by payment date.
# Include the following columns: Customer Full Name (as customer_name), Payment Date, Amount, Active (as customer_active)
# You will need to perform a LEFT JOIN on the Customer table to get the customer name, and query on the active field.
SELECT
    CONCAT(first_name,' ',last_name) AS customer_name,
    payment_date,
    amount,
    active AS customer_active
FROM customer
LEFT JOIN payment
ON customer.customer_id = payment.customer_id
WHERE customer.active = 1
ORDER BY payment.payment_date;  
