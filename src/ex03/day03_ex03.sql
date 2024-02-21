WITH male_visits AS (
	 	SELECT pizzeria_id, COUNT(pizzeria_id) FROM person_visits
			JOIN person ON person_id = person.id
		WHERE person.gender = 'male'
		GROUP BY pizzeria_id
	 ),
	 female_visits AS (
	 	SELECT pizzeria_id, COUNT(pizzeria_id) FROM person_visits
			JOIN person ON person_id = person.id
		WHERE person.gender = 'female'
		GROUP BY pizzeria_id
	 )

SELECT pizzeria.name AS pizzeria_name FROM male_visits
FULL JOIN female_visits ON male_visits.pizzeria_id = female_visits.pizzeria_id
JOIN pizzeria ON male_visits.pizzeria_id = pizzeria.id
WHERE male_visits.count - female_visits.count <> 0
ORDER BY 1
