WITH 
	visits AS (
		SELECT DISTINCT pizzeria.name FROM person_visits AS pv
			JOIN person ON person.id = pv.person_id
			JOIN pizzeria ON pizzeria.id = pv.pizzeria_id
		WHERE person.name = 'Andrey'
	),
	orders AS (
		SELECT DISTINCT pizzeria.name FROM person_order AS po
			JOIN person ON person.id = po.person_id
			JOIN menu ON po.menu_id = menu.id
			JOIN pizzeria ON pizzeria.id = menu.pizzeria_id
		WHERE person.name = 'Andrey'
	)
	
SELECT name AS pizzeria_name FROM visits
EXCEPT 
SELECT name AS pizzeria_name FROM orders
