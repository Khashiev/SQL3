SELECT menu.pizza_name, menu.price, pizzeria.name AS pizzeria_name
FROM menu
    LEFT JOIN person_order AS pv
        ON pv.menu_id = menu.id
	JOIN pizzeria 
		ON pizzeria.id = menu.pizzeria_id
WHERE pv.menu_id IS NULL
ORDER BY 1, 2