SELECT menu.id AS menu_id
FROM menu
    LEFT JOIN person_order AS pv
        ON pv.menu_id = menu.id
WHERE pv.menu_id IS NULL
ORDER BY 1