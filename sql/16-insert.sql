#                              __
# .--------.--.--.-----.-----.|  |
# |        |  |  |__ --|  _  ||  |
# |__|__|__|___  |_____|__   ||__|
#          |_____|        |__|
#
# MySQL DML Exercises 16/18 - The INSERT statement

# Write a query to insert San Diego into the cities table.
# (Note: you will have to find and use the correct country_id).
INSERT INTO city (city,country_id)
VALUES ('San Diego',(SELECT country_id FROM country WHERE country='United States'))