#                              __
# .--------.--.--.-----.-----.|  |
# |        |  |  |__ --|  _  ||  |
# |__|__|__|___  |_____|__   ||__|
#          |_____|        |__|
#
# MySQL DML Exercises 18/18 - The DELETE statement
#
# A common for using the DELETE command, you're cleaning out old or "stale" data
# Write a query to delete any films that are not currently in Sakila's inventory. (Hint, you will need to use several LEFT JOINs)

DELETE
FROM film
WHERE film_id NOT IN (SELECT DISTINCT film_id FROM inventory);