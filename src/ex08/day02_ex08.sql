SELECT
  DISTINCT p.name
FROM
  person p
  JOIN person_order po ON(p.id = po.person_id)
  JOIN menu m ON(po.menu_id = m.id)
WHERE
  p.address IN('Moscow', 'Samara')
  AND m.pizza_name = ANY(
    SELECT
      m.pizza_name
    FROM
      menu m
    WHERE
      m.pizza_name IN(
        'pepperoni pizza', 'mushroom pizza'
      )
  )
  AND p.gender = 'male'
ORDER BY
  p.name DESC;
