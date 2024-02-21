SELECT menu.pizza_name,
       menu.price,
       pizzeria.name AS pizzeria_name,
       pv.visit_date
FROM person_visits AS pv
    JOIN person
        ON pv.person_id = person.id
    JOIN pizzeria
        ON pv.pizzeria_id = pizzeria.id
    JOIN menu
        ON pizzeria.id = menu.pizzeria_id
WHERE menu.price
      BETWEEN 800 AND 1000
      AND person.name = 'Kate'
ORDER BY 1, 2, 3;
