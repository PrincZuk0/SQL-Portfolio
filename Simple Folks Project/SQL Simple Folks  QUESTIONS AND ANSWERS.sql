/*
Question 1 Write a function that finds the names of people that own homes in a list,
 including sex, age and area and value, that should be ordered by value in descending order.
 */

select name, sex, age, area, value
	from people
		join homes
	on people.name = homes.owner_name
	order by value desc;

/*
 Question 2 One of the names in politicians table was written in shorthand,
 please change the first name to correctly reflect the data on other tables.
 */

SELECT DISTINCT first_name 
FROM politicians;
/*
using this code i searched for shorthanded names and found the name don that was shorthanded
*/


select *
	from inmates
		join politicians
	on inmates.birth_year = politicians.birth_year;
/*
compared the results with other tables to confirm they were the same person and seeing the actual name was donald
*/

UPDATE politicians 
SET first_name
= 'Donald'
where bioguide_id = D01
SELECT * FROM politicians;

/*
updated the politicians table so that the name donald was written instead of don
*/

/*
Question 3 how many pets does sherry own, and show them in alphabetical order.
*/

select count(type) 
from pets
where owner_name = 'Sherry';

/*
this code counted 4 pets for sherry
*/

select name
from pets
where owner_name = 'Sherry'
order by name asc;

/*
this code shows the 4 pet names in alphabetical order
*/