WITH 
	visirors AS (
		SELECT person.gender, pizzeria.name AS pizzeria_name
		FROM person_order AS pv
			JOIN menu ON pv.menu_id = menu.id
			JOIN pizzeria ON pizzeria.id = menu.pizzeria_id
			JOIN person ON person.id = pv.person_id),
	male AS (
		SELECT pizzeria_name FROM visirors
		WHERE gender = 'male'
	),
	female AS (
		SELECT pizzeria_name FROM visirors
		WHERE gender = 'female'
	),
	only_male AS (
		SELECT * FROM male
		EXCEPT 
		SELECT * FROM female
	),
	only_female AS (
		SELECT * FROM female
		EXCEPT 
		SELECT * FROM male
	)
	
SELECT * FROM only_male
UNION 
SELECT * FROM only_female
