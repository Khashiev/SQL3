WITH pizza AS (
   SELECT m.pizza_name, pz.name, pz.id, m.price
   FROM menu m
   JOIN pizzeria pz ON m.pizzeria_id = pz.id)
   
SELECT DISTINCT m.pizza_name AS pizza_name,
                p1.name AS pizzeria_name_1,
                p2.name AS pizzeria_name_2,
                p1.price
FROM menu m
	JOIN pizza p1 ON p1.pizza_name = m.pizza_name
	JOIN pizza p2 ON p2.pizza_name = m.pizza_name
WHERE p1.id > p2.id
  AND p1.price = p2.price
ORDER BY 1;