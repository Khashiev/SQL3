INSERT INTO person_order(id, person_id, menu_id, order_date)
SELECT (GENERATE_SERIES(((SELECT MAX(id) FROM person_order) + 1),
                        ((SELECT MAX(id) FROM person_order) + (SELECT COUNT(id) FROM person)))),
       (GENERATE_SERIES((SELECT MIN(id) FROM person), (SELECT COUNT(id) FROM person))),
       (SELECT id FROM menu WHERE menu.pizza_name = 'greek pizza'),
       '2022-02-25';